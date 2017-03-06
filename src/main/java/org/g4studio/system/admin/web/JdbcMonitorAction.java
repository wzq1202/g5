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
 * JDBC监控
 * 
 * @author XiongChun
 * @since 2010-09-03
 * @see BizAction
 */
@Controller
@RequestMapping(value = "/jdbcMonitor")
public class JdbcMonitorAction extends BizAction {

	private MonitorService monitorService = (MonitorService) super.getService("monitorService");

	/**
	 * JDBC实时监控页面初始化
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/jdbcInit.do")
	public String jdbcInit(HttpServletRequest request,HttpServletResponse response) throws Exception {
		return "/system/admin/jdbcMonitor";
	}

	/**
	 * 查询监控信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/queryMonitorData.do")
	public void queryMonitorData(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Dto dto = WebUtils.getParamAsDto(request);
		dto.put("ksrq", G4Utils.Date2String(dto.getAsDate("ksrq"), "yyyyMMdd000000"));
		dto.put("jsrq", G4Utils.Date2String(dto.getAsDate("jsrq"), "yyyyMMdd235959"));
		List eventList = g4Reader.queryForPage("Monitor.queryJdbcMonitorRecordsByDto", dto);
		for (int i = 0; i < eventList.size(); i++) {
			Dto dto2 = (BaseDto)eventList.get(i);
			dto2.put("starttime", G4Utils.stringToDate(dto2.getAsString("starttime"), "yyyyMMddHHmmss", "yyyy-MM-dd HH:mm:ss"));
			dto2.put("effectrows", dto2.getAsString("effectrows").equals("-1") ? "-" : dto2.getAsString("effectrows"));
		}
		Integer totalCount = (Integer) g4Reader.queryForObject("Monitor.queryJdbcMonitorRecordsByDtoForPageCount", dto);
		String jsonString = encodeList2PageJson(eventList, totalCount, G4Constants.FORMAT_DateTime);
		write(jsonString, response);
	}

	/**
	 * 删除监控信息
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping(value = "/deleteMonitorDatas.do")
	public void deleteMonitorDatas(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Dto dto = WebUtils.getParamAsDto(request);
		monitorService.deleteJDBCMonitorData(dto);
		if (dto.getAsString("type").equalsIgnoreCase("reset"))
			setOkTipMsg("执行成功,所有监控记录已被清除!", response);
		else 
			setOkTipMsg("数据删除成功!", response);
	}

}
