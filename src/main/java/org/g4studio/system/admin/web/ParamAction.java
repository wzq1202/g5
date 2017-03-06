package org.g4studio.system.admin.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.g4studio.core.json.JsonHelper;
import org.g4studio.core.metatype.Dto;
import org.g4studio.core.metatype.impl.BaseDto;
import org.g4studio.core.web.BizAction;
import org.g4studio.core.web.util.WebUtils;
import org.g4studio.system.admin.service.ParamService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 全局参数表管理Action
 * 
 * @author XiongChun
 * @since 2010-05-05
 * @see BizAction
 */
@Controller
@RequestMapping(value = "/param")
public class ParamAction extends BizAction{
	
	private ParamService paramService = (ParamService)super.getService("paramService");
	
	/**
	 * 页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/init.do")
	public String init(HttpServletRequest request,HttpServletResponse response) throws Exception {
		return "/system/admin/manageParam";
	}
	
	/**
	 * 查询参数列表
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryParamsForManage.do")
	public void queryParamsForManage(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto dto = WebUtils.getParamAsDto(request);
		List paramList = g4Reader.queryForPage("Param.queryParamsForManage", dto);
		Integer pageCount = (Integer)g4Reader.queryForObject("Param.queryParamsForManageForPageCount", dto);
		String jsonString = JsonHelper.encodeList2PageJson(paramList, pageCount, null);
		write(jsonString, response);
	}
	
	/**
	 * 保存参数信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveParamItem.do")
	public void saveParamItem(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		paramService.saveParamItem(inDto);
		setOkTipMsg("参数数据新增成功", response);
	}
	
	/**
	 * 删除参数信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/deleteParamItems.do")
	public void deleteParamItems(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String strChecked = request.getParameter("strChecked");
		Dto inDto = new BaseDto();
		inDto.put("strChecked", strChecked);
		paramService.deleteParamItem(inDto);
		setOkTipMsg("参数数据删除成功", response);
	}
	
	/**
	 * 修改参数信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/updateParamItem.do")
	public void updateParamItem(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		paramService.updateParamItem(inDto);
		Dto outDto = new BaseDto();
		outDto.put("success", new Boolean(true));
		outDto.put("msg", "参数数据修改成功!");
		write(outDto.toJson(), response);
	}
	
	/**
	 * 内存同步
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/synMemory.do")
	public void synMemory(HttpServletRequest request,HttpServletResponse response) throws Exception {
	    List paramList = g4Reader.queryForList("Resource.getParamList");
	    request.removeAttribute("EAPARAMLIST");
	    request.setAttribute("EAPARAMLIST", paramList);
		Dto outDto = new BaseDto();
		outDto.put("success", new Boolean(true));
		write(JsonHelper.encodeObject2Json(outDto), response);
	}
}
