package org.g4studio.system.admin.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.g4studio.core.json.JsonHelper;
import org.g4studio.core.metatype.Dto;
import org.g4studio.core.metatype.impl.BaseDto;
import org.g4studio.core.model.SpringBeanLoader;
import org.g4studio.core.util.G4Constants;
import org.g4studio.core.util.G4Utils;
import org.g4studio.core.web.BizAction;
import org.g4studio.core.web.util.WebUtils;
import org.g4studio.system.admin.service.OrganizationService;
import org.g4studio.system.admin.service.UserService;
import org.g4studio.system.common.dao.vo.UserInfoVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页Action
 * 
 * @author XiongChun
 * @since 2010-01-13
 * @see BizAction
 */
@Controller
@RequestMapping(value = "/index")
public class IndexAction extends BizAction {
	
	private OrganizationService organizationService = (OrganizationService)SpringBeanLoader.getSpringBean("organizationService");

	/**
	 * 首页初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/indexInit.do")
	public String indexInit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("sysTitle", getParamValue("SYS_TITLE", request));
		request.setAttribute("westTitle", getParamValue("WEST_NAVIGATE_TITLE", request));
		String viewString = "index";
		String appLayout = getParamValue("APP_LAYOUT", request);
		if (appLayout.equals(G4Constants.APP_LAYOUT_DESKTOP)) {
			viewString = "desktop";
		}
        String userLayout = getSessionContainer(request).getUserInfo().getLayout();
        if (G4Utils.isNotEmpty(userLayout)) {
    		if (userLayout.equals(G4Constants.APP_LAYOUT_DESKTOP)) {
    			viewString = "desktop";
    		}else {
    			viewString = "index";
    		}
		}
		return viewString;
	}

	/**
	 * 欢迎页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/preferencesInit.do")
	public String preferencesInit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("=============================[欢迎页面初始化]========================");
		return "/system/admin/welcome";
	}
	
	/**
	 * 保存用户自定义皮肤
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveUserTheme.do")
	public void saveUserTheme(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Dto dto = new BaseDto();
		String theme = request.getParameter("theme");
		dto.put("userid", super.getSessionContainer(request).getUserInfo().getUserid());
		dto.put("theme", theme);
		Dto outDto = organizationService.saveUserTheme(dto);
		String jsonString = JsonHelper.encodeObject2Json(outDto);
		write(jsonString, response);
	}
	
	/**
	 * 保存用户自定义布局
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveUserLayout.do")
	public void saveUserLayout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Dto dto = new BaseDto();
		String layout = request.getParameter("layout");
		dto.put("userid", super.getSessionContainer(request).getUserInfo().getUserid());
		dto.put("layout", layout);
		Dto outDto = organizationService.saveUserLayout(dto);
		UserInfoVo userInfoVo = getSessionContainer(request).getUserInfo();
		userInfoVo.setLayout(layout);
		getSessionContainer(request).setUserInfo(userInfoVo);
		String jsonString = JsonHelper.encodeObject2Json(outDto);
		write(jsonString, response);
	}
	
	/**
	 * 保存用户自定义桌面背景
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveUserBackground.do")
	public void saveUserBackground(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Dto dto = new BaseDto();
		String background = request.getParameter("background");
		dto.put("userid", super.getSessionContainer(request).getUserInfo().getUserid());
		dto.put("background", background);
		Dto outDto = organizationService.saveUserBackground(dto);
		String jsonString = JsonHelper.encodeObject2Json(outDto);
		write(jsonString, response);
	}
	
	/**
	 * 加载当前登录用户信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/loadUserInfo.do")
	public void loadUserInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		UserInfoVo userInfoVo = getSessionContainer(request).getUserInfo();
		Dto inDto = new BaseDto();
		G4Utils.copyPropFromBean2Dto(userInfoVo, inDto);
		Dto outDto = (BaseDto)g4Reader.queryForObject("User.getUserInfoByKey", inDto);
		outDto.remove("password");
		String jsonString = JsonHelper.encodeDto2FormLoadJson(outDto, null);
		write(jsonString, response);
	}
	
	/**
	 * 修改当前登录用户信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/updateUserInfo.do")
	public void updateUserInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		UserInfoVo userInfoVo = getSessionContainer(request).getUserInfo();
		UserService service = (UserService)getService("userService");
		Dto indDto = WebUtils.getParamAsDto(request);
		Dto outDto = new BaseDto(G4Constants.TRUE);
		outDto.put("flag", G4Constants.SUCCESS);
		String password = G4Utils.encryptBasedDes(indDto.getAsString("password2")); 
		if (password.equals(userInfoVo.getPassword())) {
			service.updateUserItem4IndexPage(indDto);
			outDto.put("flag", G4Constants.SUCCESS);
			userInfoVo.setPassword(G4Utils.encryptBasedDes(indDto.getAsString("password1")));
			getSessionContainer(request).setUserInfo(userInfoVo);
		}else {
			outDto.setSuccess(G4Constants.FALSE);
			outDto.put("flag", G4Constants.FAILURE);
		}
		write(outDto.toJson(), response);
	}
	
	/**
	 * 解锁系统
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/unlockSystem.do")
	public void unlockSystem(HttpServletRequest request, HttpServletResponse response) throws Exception {
		UserInfoVo userInfoVo = getSessionContainer(request).getUserInfo();
		Dto indDto = WebUtils.getParamAsDto(request);
		String password = G4Utils.encryptBasedDes(indDto.getAsString("password"));
		Dto outDto = new BaseDto(G4Constants.TRUE);
		if (password.equals(userInfoVo.getPassword())) {
			outDto.put("flag", G4Constants.SUCCESS);
		}else {
			outDto.put("flag", G4Constants.FAILURE);
		}
		write(outDto.toJson(), response);
	}

}
