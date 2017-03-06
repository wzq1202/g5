package org.g4studio.core.web;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.g4studio.core.metatype.Dto;
import org.g4studio.core.metatype.impl.BaseDto;
import org.g4studio.core.model.SpringBeanLoader;
import org.g4studio.core.model.dao.Dao;
import org.g4studio.core.properties.PropertiesFactory;
import org.g4studio.core.properties.PropertiesFile;
import org.g4studio.core.properties.PropertiesHelper;
import org.g4studio.core.util.G4Constants;
import org.g4studio.core.util.G4Utils;
import org.g4studio.core.web.util.WebUtils;
import org.g4studio.system.admin.service.MonitorService;
import org.g4studio.system.common.dao.vo.UserInfoVo;
import org.g4studio.system.common.util.SystemConstants;
import org.g4studio.system.common.util.idgenerator.IDHelper;

/**
 * 请求拦截过滤器
 * 
 * @author XiongChun
 * @since 2010-04-13
 */
public class RequestFilter implements Filter {

    private Log log = LogFactory.getLog(RequestFilter.class);
    protected FilterConfig filterConfig;
    protected boolean enabled;

    /**
     * 构造
     */
    public RequestFilter() {
		filterConfig = null;
		enabled = false;
    }

    /**
     * 初始化
     */
    public void init(FilterConfig pFilterConfig) throws ServletException {
		this.filterConfig = pFilterConfig;
		String value = filterConfig.getInitParameter("enabled");
		if (G4Utils.isEmpty(value)) {
		    this.enabled = true;
		} else if (value.equalsIgnoreCase("true")) {
		    this.enabled = true;
		} else {
		    this.enabled = false;
		}
    }

    /**
     * 过滤处理
     */
    public void doFilter(ServletRequest pRequest, ServletResponse pResponse,FilterChain fc) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) pRequest;
		HttpServletResponse response = (HttpServletResponse) pResponse;
		String ctxPath = request.getContextPath();
		String requestUri = request.getRequestURI();
		String uri = requestUri.substring(ctxPath.length());
		UserInfoVo userInfo = WebUtils.getSessionContainer(request).getUserInfo();
		BigDecimal costTime = null;
		PropertiesHelper pHelper = PropertiesFactory.getPropertiesHelper(PropertiesFile.G4);
		String eventMonitorEnabel = pHelper.getValue("requestMonitor", "1");
		String postType = request.getParameter("postType");
		postType = G4Utils.isEmpty(postType) ? G4Constants.PostType_Normal : postType;
		//判断请求类型
		if (postType.equals(G4Constants.PostType_Nude)) {
//		    long start = System.currentTimeMillis();
//		    fc.doFilter(request, response);
//		    if (eventMonitorEnabel.equalsIgnoreCase(SystemConstants.EVENTMONITOR_ENABLE_Y)) {
//				costTime = new BigDecimal(System.currentTimeMillis() - start);
//				saveEvent(request, costTime);
//		    }
			//判断时候登陆请求
			if(uri.contains("/login")){
				fc.doFilter(request, response);
				return ;
			}
			
			if(Pattern.matches("^/rest/\\w*(/\\w*)*$", uri)){
				fc.doFilter(request, response);
				return ;
			}
			
			//非登陆请求
			if(G4Utils.isEmpty(userInfo)){// session 失效
				response.getWriter().write("<script type=\"text/javascript\">parent.location.href='" + ctxPath + "/login.jsp'</script>");
			    response.getWriter().flush();
			    response.getWriter().close();
			    log.warn("警告:非法的URL请求已被成功拦截,请求已被强制重定向到了登录页面.访问来源IP锁定:"
						+ request.getRemoteAddr() + " 试图访问的URL:"
						+ request.getRequestURL().toString() + "?reqCode=" + request.getParameter("reqCode"));
			    return ;
			}
			
			fc.doFilter(request, response);
			long start = System.currentTimeMillis();
			if (eventMonitorEnabel.equalsIgnoreCase(SystemConstants.EVENTMONITOR_ENABLE_Y)) {
				costTime = new BigDecimal(System.currentTimeMillis() - start);
				saveEvent(request, costTime);
		    }
		} else {
			
			//判断时候登陆请求
			if(uri.contains("/login")){
				fc.doFilter(request, response);
				return ;
			}
			
			if(Pattern.matches("^/rest/\\w*(/\\w*)*$", uri)){
				fc.doFilter(request, response);
				return ;
			}
			//非登陆请求
			if(G4Utils.isEmpty(userInfo)){// session 失效
				response.getWriter().write("<script type=\"text/javascript\">parent.location.href='" + ctxPath + "/login.jsp'</script>");
			    response.getWriter().flush();
			    response.getWriter().close();
			    log.warn("警告:非法的URL请求已被成功拦截,请求已被强制重定向到了登录页面.访问来源IP锁定:"
						+ request.getRemoteAddr() + " 试图访问的URL:"
						+ request.getRequestURL().toString() + "?reqCode=" + request.getParameter("reqCode"));
			    return ;
			}
			fc.doFilter(request, response);
			long start = System.currentTimeMillis();
			if (eventMonitorEnabel.equalsIgnoreCase(SystemConstants.EVENTMONITOR_ENABLE_Y)) {
				costTime = new BigDecimal(System.currentTimeMillis() - start);
				saveEvent(request, costTime);
		    }
		}
    }

    /**
     * 写操作员事件表
     * 
     * @param request
     */
    private void saveEvent(HttpServletRequest request, BigDecimal costTime) {
	UserInfoVo userInfo = WebUtils.getSessionContainer(request).getUserInfo();
	if (G4Utils.isEmpty(userInfo)) {
	    return;
	}
	Dto dto = new BaseDto();
	String menuid = request.getParameter("menuid4Log");
	String uri = request.getRequestURI();
	String actionName = uri.substring(uri.lastIndexOf("/") + 1, uri.indexOf(".do"));
	if (G4Utils.isNotEmpty(menuid)) {
	    Dao g4Dao = (Dao) SpringBeanLoader.getSpringBean("g4Dao");
	    String menuname = ((BaseDto) g4Dao.queryForObject("Resource.queryEamenuByMenuID", menuid)).getAsString("menuname");
	    String msg = userInfo.getUsername() + "[" + userInfo.getAccount() + "]打开了菜单[" + menuname + "]";
	    dto.put("description", msg);
	    log.info(msg);
	} else {
		//TODO 
	    String msg = userInfo.getUsername() + "[" + userInfo.getAccount()
		    + "]调用了Action方法[" + actionName + "]";
	    dto.put("description", msg);
	    log.info(msg + ";请求路径[" + uri + "]");
	}
	MonitorService monitorService = (MonitorService) SpringBeanLoader.getSpringBean("monitorService");
	
	dto.put("account", userInfo.getAccount());
	dto.put("activetime", G4Utils.getCurrentTimeAsNumber());
	dto.put("userid", userInfo.getUserid());
	dto.put("username", userInfo.getUsername());
	dto.put("requestpath", request.getRequestURI());
	dto.put("methodname", actionName);
	dto.put("eventid", IDHelper.getEventID());
	dto.put("costtime", costTime);
	
	monitorService.saveEvent(dto);

    }

    /**
     * 销毁
     */
    public void destroy() {
	filterConfig = null;
    }

}
