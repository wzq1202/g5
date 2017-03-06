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
import org.g4studio.system.admin.service.ResourceService;
import org.g4studio.system.common.util.SystemConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 资源模型
 * 
 * @author XiongChun
 * @since 2010-01-31
 */
@Controller
@RequestMapping(value = "/resource")
public class ResourceAction extends BizAction {

	private ResourceService resourceService = (ResourceService) super.getService("resourceService");

	/**
	 * 菜单资源管理页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/menuResourceInit.do")
	public String menuResourceInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		super.removeSessionAttribute(request, "menuid");
		Dto dto = (Dto)g4Reader.queryForObject("Resource.queryEamenuByMenuID", "01");
		request.setAttribute("rootMenuName", dto.getAsString("menuname"));
		return "/system/admin/manageMenuResource";
	}

	/**
	 * 查询菜单项目 生成菜单树
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryMenuItems.do")
	public void queryMenuItems(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto dto = new BaseDto();
		String nodeid = request.getParameter("node");
		dto.put("parentid", nodeid);
		List menuList = g4Reader.queryForList("Resource.queryMenuItemsByDto", dto);
		Dto menuDto = new BaseDto();
		for (int i = 0; i < menuList.size(); i++) {
			menuDto = (BaseDto) menuList.get(i);
			if (menuDto.getAsString("leaf").equals(SystemConstants.LEAF_Y))
				menuDto.put("leaf", new Boolean(true));
			else
				menuDto.put("leaf", new Boolean(false));
			if (menuDto.getAsString("id").length() == 4)
				// ID长度为4的节点自动展开
				menuDto.put("expanded", new Boolean(true));
		}
		write(JsonHelper.encodeObject2Json(menuList), response);
	}

	/**
	 * 查询菜单项目 - 菜单管理
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryMenuItemsForManage.do")
	public void queryMenuItemsForManage(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto dto = WebUtils.getParamAsDto(request);
		String menuid = request.getParameter("menuid");
		if (G4Utils.isNotEmpty(menuid)) {
			super.setSessionAttribute(request, "menuid", menuid);
		}
		dto.put("menuid", super.getSessionAttribute(request, "menuid"));
		List menuList = g4Reader.queryForPage("Resource.queryMenuItemsForManage", dto);
		Integer pageCount = (Integer) g4Reader.queryForObject("Resource.queryMenuItemsForManageForPageCount", dto);
		String jsonString = JsonHelper.encodeList2PageJson(menuList, pageCount, null);
		write(jsonString, response);
	}

	/**
	 * 保存菜单
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveMenuItem.do")
	public void saveMenuItem(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		resourceService.saveMenuItem(inDto);
		setOkTipMsg("菜单数据新增成功", response);
	}

	/**
	 * 修改菜单
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/updateMenuItem.do")
	public void updateMenuItem(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		resourceService.updateMenuItem(inDto);
		setOkTipMsg("菜单数据修改成功", response);
	}

	/**
	 * 删除菜单项
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/deleteMenuItems.do")
	public void deleteMenuItems(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String strChecked = request.getParameter("strChecked");
		String type = request.getParameter("type");
		String menuid = request.getParameter("menuid");
		Dto inDto = new BaseDto();
		inDto.put("strChecked", strChecked);
		inDto.put("type", type);
		inDto.put("menuid", menuid);
		resourceService.deleteMenuItems(inDto);
		setOkTipMsg("菜单数据删除成功", response);
	}

	/**
	 * 代码表管理页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/codeTableInit.do")
	public String codeTableInit(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return "/system/admin/manageCodeTable";
	}

	/**
	 * 查询代码表
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryCodeItems.do")
	public void queryCodeItems(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		List codeList = g4Reader.queryForPage("Resource.getCodeListForPage", inDto);
		Integer totalCount = (Integer) g4Reader.queryForObject("Resource.getCodeListForPageCount", inDto);
		String jsonStrList = JsonHelper.encodeList2PageJson(codeList, totalCount, null);
		write(jsonStrList, response);
	}

	/**
	 * 保存代码表
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveCodeItem.do")
	public void saveCodeItem(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		Dto outDto = resourceService.saveCodeItem(inDto);
		String jsonString = JsonHelper.encodeObject2Json(outDto);
		write(jsonString, response);
	}

	/**
	 * 删除代码表
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/deleteCodeItem.do")
	public void deleteCodeItem(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String strChecked = request.getParameter("strChecked");
		Dto inDto = new BaseDto();
		inDto.put("strChecked", strChecked);
		resourceService.deleteCodeItem(inDto);
		setOkTipMsg("字典数据删除成功", response);
	}

	/**
	 * 修改代码表
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/updateCodeItem.do")
	public void updateCodeItem(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		resourceService.updateCodeItem(inDto);
		setOkTipMsg("字典数据修改成功", response);
	}
	
	/**
	 * 字典内存同步
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/synMemory.do")
	public void synMemory(HttpServletRequest request,HttpServletResponse response) throws Exception {
	    List codeList = g4Reader.queryForList("Resource.getCodeViewList");
	    request.removeAttribute("EACODELIST");
	    request.setAttribute("EACODELIST", codeList);
	    setOkTipMsg("内存同步成功", response);
	}

	/**
	 * 系统图标页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/iconInit.do")
	public String iconInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		return "/system/admin/manageIcon";
	}

	/**
	 * 查询系统图标
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryIconItems.do")
	public void queryIconItems(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		List iconList = g4Reader.queryForPage("Resource.queryIconsForManage", inDto);
		String subPath = "./resource/image/ext/";
		for (int i = 0; i < iconList.size(); i++) {
			Dto dto = (BaseDto)iconList.get(i);
			dto.put("accesspath", subPath + dto.getAsString("filename"));
			dto.put("previewpath", subPath + dto.getAsString("filename"));
		}
		Integer pageCount = (Integer) g4Reader.queryForObject("Resource.queryIconsForManageForPageCount", inDto);
		String jsonString = JsonHelper.encodeList2PageJson(iconList, pageCount, null);
		write(jsonString, response);
	}

	/**
	 * 调色板页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/colorPaletteInit.do")
	public String colorPaletteInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		return "/system/admin/colorPalette";
	}
}
