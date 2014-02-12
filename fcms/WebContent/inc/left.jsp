<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="fs" uri="/fs-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="inc.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
		treeSting=<%=session.getAttribute("jsonTreeMenu")%>;
		funcid="<s:property value="funcid" />";
		 mainMenu = $('#mainMenu').tree({
			//url:sy.basePath+"/admin/admin_left.do",
			 data:treeSting, 
		 	parentField : 'pid'
		}); 

	});
</script>
	<div data-options="href:'',split:true"  style="width: 200px; padding: 10px;">
		<s:if test="%{#session.manageSite != null}">
			<a href="javascript:void(0);" title="点击选择管理站点" onclick="managerSite();" class="easyui-menubutton" data-options="iconCls:'ext-icon-rainbow'"><fs:string len="8" str="${manageSite.name }"></fs:string></a> 
			<img style="cursor:hand" onclick="window.open('<%=basePath %>site/${manageSite.sourcepath }/index.html');" title="点击预览站点" src="../img/www.gif">
		</s:if>
		<s:if test="%{#session.manageSite == null}">
			<a href="javascript:void(0);" title="点击选择管理站点" onclick="managerSite();" class="easyui-menubutton" data-options="iconCls:'ext-icon-rainbow'">请选择管理站点</a> 
		</s:if>
		<ul id="mainMenu"></ul>
	</div>
