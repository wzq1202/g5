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
import org.g4studio.system.admin.service.UserService;
import org.g4studio.system.common.dao.vo.UserInfoVo;
import org.g4studio.system.common.util.SystemConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用户管理与授权
 * 
 * @author XiongChun
 * @since 2010-04-21
 * @see BizAction
 */
@Controller
@RequestMapping(value = "/user")
public class UserAction extends BizAction {
	
	private UserService userService = (UserService) super.getService("userService");
	
	private OrganizationService organizationService = (OrganizationService) super.getService("organizationService");


	/**
	 * 用户管理与授权页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/userInit.do")
	public String userInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		super.removeSessionAttribute(request, "deptid");
		Dto inDto = new BaseDto();
		String deptid = super.getSessionContainer(request).getUserInfo().getDeptid();
		inDto.put("deptid", deptid);
		Dto outDto = organizationService.queryDeptinfoByDeptid(inDto);
		request.setAttribute("rootDeptid", outDto.getAsString("deptid"));
		request.setAttribute("rootDeptname", outDto.getAsString("deptname"));
		UserInfoVo userInfoVo = getSessionContainer(request).getUserInfo();
		request.setAttribute("login_account", userInfoVo.getAccount());
		return "/system/admin/manageUser";
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
	 * 查询用户列表
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryUsersForManage.do")
	public void queryUsersForManage(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto dto = WebUtils.getParamAsDto(request);
		String deptid = request.getParameter("deptid");
		if (G4Utils.isNotEmpty(deptid)) {
			setSessionAttribute(request, "deptid", deptid);
		}
		if (!G4Utils.isEmpty(request.getParameter("firstload"))) {
			dto.put("deptid", super.getSessionContainer(request).getUserInfo().getDeptid());
		} else {
			dto.put("deptid", super.getSessionAttribute(request, "deptid"));
		}	
		dto.put("usertype", SystemConstants.USERTYPE_ADMIN);
		UserInfoVo userInfoVo = getSessionContainer(request).getUserInfo();
		if (WebUtils.getParamValue("DEFAULT_ADMIN_ACCOUNT", request).equals(userInfoVo.getAccount())) {
			dto.remove("usertype");
		}
		if (WebUtils.getParamValue("DEFAULT_DEVELOP_ACCOUNT", request).equals(userInfoVo.getAccount())) {
			dto.remove("usertype");
		}
		List userList = g4Reader.queryForPage("User.queryUsersForManage", dto);
		Integer pageCount = (Integer) g4Reader.queryForObject("User.queryUsersForManageForPageCount", dto);
		String jsonString = JsonHelper.encodeList2PageJson(userList, pageCount, null);
		write(jsonString, response);
	}

	/**
	 * 保存用户
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveUserItem.do")
	public void saveUserItem(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		Dto outDto = userService.saveUserItem(inDto);
		String jsonString = JsonHelper.encodeObject2Json(outDto);
		write(jsonString, response);
	}

	/**
	 * 删除用户
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/deleteUserItems.do")
	public void deleteUserItems(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String strChecked = request.getParameter("strChecked");
		Dto inDto = new BaseDto();
		inDto.put("strChecked", strChecked);
		userService.deleteUserItems(inDto);
		setOkTipMsg("用户数据删除成功", response);
	}

	/**
	 * 修改用户
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/updateUserItem.do")
	public void updateUserItem(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		userService.updateUserItem(inDto);
		setOkTipMsg("用户数据修改成功", response);
	}

	/**
	 * 用户授权页面初始化:选择角色
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/userGrantInit.do")
	public String userGrantInit(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		super.removeSessionAttribute(request, "USERID_USERACTION");
		String userid = request.getParameter("userid");
		super.setSessionAttribute(request, "USERID_USERACTION", userid);
		return "/system/admin/selectRoleTree";
	}

	/**
	 * 用户授权页面初始化:选择菜单
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/selectMenuInit.do")
	public String selectMenuInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		return "/system/admin/selectMenuTree";
	}

	/**
	 * 保存用户角色关联信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveSelectedRole.do")
	public void saveSelectedRole(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = new BaseDto();
		inDto.put("roleid", request.getParameter("roleid"));
		inDto.put("userid", super.getSessionAttribute(request, "USERID_USERACTION"));
		userService.saveSelectedRole(inDto);
		setOkTipMsg("您选择的人员角色关联数据保存成功", response);
	}

	/**
	 * 保存用户菜单关联信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveSelectedMenu.do")
	public void saveSelectedMenu(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Dto inDto = new BaseDto();
		inDto.put("menuid", request.getParameter("menuid"));
		inDto.put("userid", super.getSessionAttribute(request, "USERID_USERACTION"));
		userService.saveSelectedMenu(inDto);
		setOkTipMsg("您选择的人员菜单关联数据保存成功", response);
	}
}
