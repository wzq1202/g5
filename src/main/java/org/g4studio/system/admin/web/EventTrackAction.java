package org.g4studio.system.admin.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.g4studio.core.metatype.Dto;
import org.g4studio.core.metatype.impl.BaseDto;
import org.g4studio.core.util.G4Constants;
import org.g4studio.core.util.G4Utils;
import org.g4studio.core.web.BizAction;
import org.g4studio.core.web.util.WebUtils;
import org.g4studio.system.admin.service.MonitorService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 事件跟踪Action
 * 
 * @author XiongChun
 * @since 2010-09-12
 */
@Controller
@RequestMapping(value = "/eventTrack")
public class EventTrackAction extends BizAction {
	
	private MonitorService monitorService = (MonitorService)super.getService("monitorService");
	
	/**
	 * 事件跟踪页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/init.do")
	public String init(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return "/system/admin/eventTrack";
	}
	
	/**
	 * 查询事件列表
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryEvents.do")
	public void queryEvents(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Dto dto = WebUtils.getParamAsDto(request);
		dto.put("ksrq", G4Utils.Date2String(dto.getAsDate("ksrq"), "yyyyMMdd000000"));
		dto.put("jsrq", G4Utils.Date2String(dto.getAsDate("jsrq"), "yyyyMMdd235959"));
		List eventList = g4Reader.queryForPage("Monitor.queryEventsByDto", dto);
		for (int i = 0; i < eventList.size(); i++) {
			Dto dto2 = (BaseDto)eventList.get(i);
			dto2.put("activetime", G4Utils.stringToDate(dto2.getAsString("activetime"), "yyyyMMddHHmmss", "yyyy-MM-dd HH:mm:ss"));
		}
		Integer totalCount = (Integer) g4Reader.queryForObject("Monitor.queryEventsByDtoForPageCount", dto);
		String jsonString = encodeList2PageJson(eventList, totalCount, G4Constants.FORMAT_DateTime);
		write(jsonString, response);
	}
	
	/**
	 * 删除事件
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/deleteEvents.do")
	public void deleteEvents(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Dto dto = WebUtils.getParamAsDto(request);
		monitorService.deleteEvent(dto);
		if (dto.getAsString("type").equalsIgnoreCase("reset"))
			setOkTipMsg("清空成功,所有事件已被清除!", response);
		else
			setOkTipMsg("数据删除成功!", response);
	}
}
