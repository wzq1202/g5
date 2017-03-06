package org.g4studio.system.admin.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.g4studio.core.json.JsonHelper;
import org.g4studio.core.metatype.Dto;
import org.g4studio.core.metatype.impl.BaseDto;
import org.g4studio.core.web.BizAction;
import org.g4studio.core.web.util.WebUtils;
import org.g4studio.system.admin.service.PartService;
import org.g4studio.system.common.util.SystemConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * UI组件托管
 * 
 * @author XiongChun
 * @since 2011-06-03
 * @see BizAction
 */
@Controller
@RequestMapping(value = "/part")
public class PartAction extends BizAction {
	
	private PartService service = (PartService)getService("partService");

	/**
	 * 页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/init.do")
	public String init(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto dto = (Dto)g4Reader.queryForObject("Resource.queryEamenuByMenuID", "01");
		request.setAttribute("rootMenuName", dto.getAsString("menuname"));
		return "/system/admin/managePart";
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
		dto.put("menutype", SystemConstants.MENUTYPE_BUSINESS);
		List menuList = g4Reader.queryForList("Resource.queryMenuItemsByDto", dto);
		Dto menuDto = new BaseDto();
		for (int i = 0; i < menuList.size(); i++) {
			menuDto = (BaseDto) menuList.get(i);
			if (menuDto.getAsString("leaf").equals(SystemConstants.LEAF_Y))
				menuDto.put("leaf", new Boolean(true));
			else
				menuDto.put("leaf", new Boolean(false));
			if (menuDto.getAsString("id").length() == 4)
				menuDto.put("expanded", new Boolean(true));
		}
		write(JsonHelper.encodeObject2Json(menuList), response);
	}
	
	/**
	 * 查询UI组件列表
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryParts.do")
	public void queryParts(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto dto = WebUtils.getParamAsDto(request);
		List list = g4Reader.queryForPage("Part.queryParts", dto);
		Integer countInteger = (Integer) g4Reader.queryForObject("Part.queryPartsForPageCount", dto);
		String jsonString = encodeList2PageJson(list, countInteger, null);
		write(jsonString, response);
	}
	
	/**
	 * 保存脏数据
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/saveDirtyDatas.do")
	public void saveDirtyDatas(HttpServletRequest request,HttpServletResponse response) throws Exception {
		List list  = WebUtils.getGridDirtyData(request);
		Dto inDto = new BaseDto();
		inDto.setDefaultAList(list);
		Dto outDto = service.saveDirtyDatas(inDto);
		if (outDto.getSuccess()) {
			setOkTipMsg("数据保存成功", response);
		}else {
			setOkTipMsg("保存操作被取消,同一托管页面上元素Dom标志只能唯一,请检查", response);
		}
		write(JsonHelper.encodeObject2Json(outDto), response);
	}
	
	/**
	 * 删除数据
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/deleteItem.do")
	public void deleteItem(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Dto inDto = WebUtils.getParamAsDto(request);
		service.deleteItem(inDto);
		setOkTipMsg("数据删除成功", response);
	}
	
}
