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
import org.g4studio.system.admin.service.RoleService;
import org.g4studio.system.common.dao.vo.UserInfoVo;
import org.g4studio.system.common.util.SystemConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 角色管理与授权
 * 
 * @author XiongChun
 * @since 2010-04-21
 */
@Controller
@RequestMapping(value = "/role")
public class RoleAction extends BizAction{
	
	private RoleService roleService = (RoleService) super.getService("roleService");
	private OrganizationService organizationService = (OrganizationService) super.getService("organizationService");
	
	/**
	 * 角色管理与授权页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/roleInit.do")
	public String roleInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		super.removeSessionAttribute(request, "deptid");
		Dto inDto = new BaseDto();
		String deptid = super.getSessionContainer(request).getUserInfo().getDeptid();
		inDto.put("deptid", deptid);
		Dto outDto = organizationService.queryDeptinfoByDeptid(inDto);
		request.setAttribute("rootDeptid", outDto.getAsString("deptid"));
		request.setAttribute("rootDeptname", outDto.getAsString("deptname"));
		UserInfoVo userInfoVo = getSessionContainer(request).getUserInfo();
		request.setAttribute("login_account", userInfoVo.getAccount());
		return "/system/admin/manageRole";
	}
	
	/**
	 * 部门树初始化
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
	 * 查询角色列表
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryRolesForManage.do")
	public void queryRolesForManage(HttpServletRequest request,HttpServletResponse response) throws Exception {
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
		dto.put("roletype", SystemConstants.ROLETYPE_ADMIN);
		UserInfoVo userInfoVo = getSessionContainer(request).getUserInfo();
		if (WebUtils.getParamValue("DEFAULT_ADMIN_ACCOUNT", request).equals(userInfoVo.getAccount())) {
			dto.remove("roletype");
		}
		if (WebUtils.getParamValue("DEFAULT_DEVELOP_ACCOUNT", request).equals(userInfoVo.getAccount())) {
			dto.remove("roletype");
		}
		List roleList = g4Reader.queryForPage("Role.queryRolesForManage", dto);
		Integer pageCount = (Integer)g4Reader.queryForObject("Role.queryRolesForManageForPageCount", dto);
		String jsonString = JsonHelper.encodeList2PageJson(roleList, pageCount, null);	
		write(jsonString, response);
	}
	
	/**
	 * 保存角色
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveRoleItem.do")
	public void saveRoleItem(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		roleService.saveRoleItem(inDto);
		setOkTipMsg("角色新增成功", response);
	}
	
	/**
	 * 删除角色
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/deleteRoleItems.do")
	public void deleteRoleItems(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String strChecked = request.getParameter("strChecked");
		Dto inDto = new BaseDto();
		inDto.put("strChecked", strChecked);
		roleService.deleteRoleItems(inDto);
		setOkTipMsg("角色删除成功", response);
	}
	
	/**
	 * 修改角色
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/updateRoleItem.do")
	public void updateRoleItem(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		roleService.updateRoleItem(inDto);
		setOkTipMsg("角色修改成功", response);
	}
		
	/**
	 * 操作权限授权初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/operatorTabInit.do")
	public String operatorTabInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		super.removeSessionAttribute(request, "ROLEID_ROLEACTION");
		String roleid = request.getParameter("roleid");
		super.setSessionAttribute(request, "ROLEID_ROLEACTION", roleid);
		return "/system/admin/operatorTab";
	}
	
	/**
	 * 选择人员初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/selectUserTabInit.do")
	public String selectUserTabInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		return "/system/admin/selectUserTab";
	}
	
	/**
	 * 管理权限授权初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/managerTabInit.do")
	public String managerTabInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		return "/system/admin/managerTab";
	}
	
	/**
	 * 保存角色授权信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveGrant.do")
	public void saveGrant(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = new BaseDto();
		inDto.put("menuid", request.getParameter("menuid"));
		inDto.put("authorizelevel", request.getParameter("key"));
		inDto.put("roleid", super.getSessionAttribute(request, "ROLEID_ROLEACTION"));
		roleService.saveGrant(inDto);
		String msg = "";
		if(inDto.getAsString("authorizelevel").equals(SystemConstants.AUTHORIZELEVEL_ACCESS))
			msg = "经办权限授权成功";
		if(inDto.getAsString("authorizelevel").equals(SystemConstants.AUTHORIZELEVEL_ADMIN))
			msg = "管理权限授权成功";
		setOkTipMsg(msg, response);
	}
	
	/**
	 * 保存角色用户关联信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveUser.do")
	public void saveUser(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = new BaseDto();
		inDto.put("userid", request.getParameter("userid"));
		inDto.put("roleid", super.getSessionAttribute(request, "ROLEID_ROLEACTION"));
		roleService.saveSelectUser(inDto);
		setOkTipMsg("您选择的角色人员关联数据保存成功", response);
	}
}
