package org.g4studio.system.admin.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.g4studio.core.metatype.Dto;
import org.g4studio.core.metatype.impl.BaseDto;
import org.g4studio.core.util.G4Utils;
import org.g4studio.core.web.BizAction;
import org.g4studio.core.web.util.WebUtils;
import org.g4studio.system.admin.service.OrganizationService;
import org.g4studio.system.admin.service.PartService;
import org.g4studio.system.common.util.SystemConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * UI组件人员授权
 * 
 * @author XiongChun
 * @since 2011-06-03
 * @see BizAction
 */
@Controller
@RequestMapping(value = "/userPart")
public class UserPartAction extends BizAction {
	
	private PartService partService = (PartService) getService("partService");
	
	private OrganizationService organizationService = (OrganizationService)getService("organizationService");

	/**
	 * 页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/init.do")
	public String init(HttpServletRequest request,HttpServletResponse response) throws Exception {
		super.removeSessionAttribute(request, "deptid");
		Dto inDto = new BaseDto();
		String deptid = super.getSessionContainer(request).getUserInfo().getDeptid();
		inDto.put("deptid", deptid);
		Dto outDto = organizationService.queryDeptinfoByDeptid(inDto);
		request.setAttribute("rootDeptid", outDto.getAsString("deptid"));
		request.setAttribute("rootDeptname", outDto.getAsString("deptname"));
		Dto dto = (Dto)g4Reader.queryForObject("Resource.queryEamenuByMenuID", "01");
		request.setAttribute("rootMenuName", dto.getAsString("menuname"));
		return "/system/admin/userPart";
	}
	
	/**
	 * 部门管理树初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/departmentTreeInit.do")
	public void departmentTreeInit(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Dto dto = new BaseDto();
		String nodeid = request.getParameter("node");
		dto.put("parentid", nodeid);
		Dto outDto = organizationService.queryDeptItems(dto);
		write(outDto.getAsString("jsonString"), response);
	}
	
	/**
	 * 查询UI组件列表
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryParts.do")
	public void queryParts(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Dto dto = WebUtils.getParamAsDto(request);
		List list = g4Reader.queryForPage("Part.queryParts", dto);
		Integer countInteger = (Integer) g4Reader.queryForObject("Part.queryPartsForPageCount", dto);
		for (int i = 0; i < list.size(); i++) {
			Dto partDto = (BaseDto)list.get(i);
			dto.put("partid", partDto.getAsString("partid"));
			Dto outDto = (BaseDto)g4Reader.queryForObject("Part.queryPart4UserGrant", dto);
			if (G4Utils.isEmpty(outDto)) {
				partDto.put("partauthtype", SystemConstants.PARTAUTHTYPE_NOGRANT);
			}else {
				partDto.putAll(outDto);
			}
		}
		String jsonString = encodeList2PageJson(list, countInteger, null);
		write(jsonString, response);
	}
	
	/**
	 * 保存UI人员授权数据
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/savePartUserGrantDatas.do")
	public void savePartUserGrantDatas(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		List list  = WebUtils.getGridDirtyData(request);
		Dto inDto = new BaseDto();
		inDto.setDefaultAList(list);
		partService.savePartUserGrantDatas(inDto);
		setOkTipMsg("授权数据保存成功", response);
	}

}
