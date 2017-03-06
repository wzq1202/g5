package org.g4studio.system.admin.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.g4studio.core.json.JsonHelper;
import org.g4studio.core.metatype.Dto;
import org.g4studio.core.metatype.impl.BaseDto;
import org.g4studio.core.util.G4Utils;
import org.g4studio.core.web.BizAction;
import org.g4studio.core.web.util.WebUtils;
import org.g4studio.system.admin.service.OrganizationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 组织机构模型
 * 
 * @author XiongChun
 * @since 2010-04-10
 * @see BizAction
 */
@Controller
@RequestMapping(value = "/organization")
public class OrganizationAction extends BizAction {
	
	private OrganizationService organizationService = (OrganizationService) super.getService("organizationService");
	
	/**
	 * 部门管理页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/departmentInit.do")
	public String departmentInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		super.removeSessionAttribute(request, "deptid");
		Dto inDto = new BaseDto();
		String deptid = super.getSessionContainer(request).getUserInfo().getDeptid();
		inDto.put("deptid", deptid);
		Dto outDto = organizationService.queryDeptinfoByDeptid(inDto);
		request.setAttribute("rootDeptid", outDto.getAsString("deptid"));
		request.setAttribute("rootDeptname", outDto.getAsString("deptname"));
		return "/system/admin/manageDepartment";
	}
	
	/**
	 * 部门管理树初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/departmentTreeInit.do")
	public void departmentTreeInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto dto = new BaseDto();
		String nodeid = request.getParameter("node");
		dto.put("parentid", nodeid);
		Dto outDto = organizationService.queryDeptItems(dto);
		write(outDto.getAsString("jsonString"), response);
	}
	
	/**
	 * 查询部门列表信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryDeptsForManage.do")
	public void queryDeptsForManage(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto dto = WebUtils.getParamAsDto(request);
		String deptid = request.getParameter("deptid");
		if (G4Utils.isNotEmpty(deptid)) {
			super.setSessionAttribute(request, "deptid", deptid);
		}
		if(!G4Utils.isEmpty(request.getParameter("firstload"))){
			dto.put("deptid", super.getSessionContainer(request).getUserInfo().getDeptid());
		}else{
			dto.put("deptid", super.getSessionAttribute(request, "deptid"));
		}		
		List menuList = g4Reader.queryForPage("Organization.queryDeptsForManage", dto);
		Integer pageCount = (Integer) g4Reader.queryForObject("Organization.queryDeptsForManageForPageCount", dto);
		String jsonString = encodeList2PageJson(menuList, pageCount, null);
		write(jsonString, response);
	}
	
	/**
	 * 保存部门
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveDeptItem.do")
	public void saveDeptItem(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		organizationService.saveDeptItem(inDto);
		setOkTipMsg("部门数据新增成功", response);
	}
	
	/**
	 * 修改部门
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/updateDeptItem.do")
	public void updateDeptItem(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		organizationService.updateDeptItem(inDto);
		setOkTipMsg("部门数据修改成功", response);
	}
	
	/**
	 * 删除部门项
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/deleteDeptItems.do")
	public void deleteDeptItems(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String strChecked = request.getParameter("strChecked");
		String type = request.getParameter("type");
		String deptid = request.getParameter("deptid");
		Dto inDto = new BaseDto();
		inDto.put("strChecked", strChecked);
		inDto.put("type", type);
		inDto.put("deptid", deptid);
		organizationService.deleteDeptItems(inDto);
		setOkTipMsg("部门数据删除成功", response);
	}
	
	/**
	 * 根据用户所属部门编号查询部门对象<br>
	 * 用于构造组织机构树的根节点
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryDeptinfoByDeptid.do")
	public void queryDeptinfoByDeptid(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = new BaseDto();
		String deptid = super.getSessionContainer(request).getUserInfo().getDeptid();
		inDto.put("deptid", deptid);
		Dto outDto = organizationService.queryDeptinfoByDeptid(inDto);
		String jsonString = JsonHelper.encodeObject2Json(outDto);
		write(jsonString, response);
	}
}
