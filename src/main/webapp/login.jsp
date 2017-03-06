<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/common/include/taglib.jsp"%>
<G4Studio:html title="答题管理系统" showLoading="false" exportParams="true"
	isSubPage="false">
<G4Studio:import src="/system/admin/js/login.js" />
<G4Studio:body>
	<div id="hello-win" class="x-hidden">
	<div id="hello-tabs"><img border="0" width="450" height="70"
		src="<%=request.getAttribute("bannerPath") == null ? request.getContextPath()
							+ "/resource/image/login_banner.png" : request.getAttribute("bannerPath")%>" />
	</div>
	</div>
	<div id="aboutDiv" class="x-hidden"
		style='color: black; padding-left: 10px; padding-top: 10px; font-size: 12px'>
	答题管理系统<br>
	<br>
	联系方式:51036101@qq.com
	</div>
</G4Studio:body>
</G4Studio:html>