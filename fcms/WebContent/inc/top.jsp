<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@include file="../util/checkParentFrame.jsp" %>

<script type="text/javascript" charset="utf-8">
	function leftMenuFlush(fid){
		debugger
		p =window.parent;
		p .flushMenu(fid);
	}
	var updatePwd=function(){
		
	}
	var lockWindowFun = function() {
		$.post(sy.contextPath + '/base/syuser!doNotNeedSessionAndSecurity_logout.sy', function(result) {
			$('#loginDialog').dialog('open');
		}, 'json');
	};
	var logoutFun = function() {
		$.post(sy.contextPath + '/base/syuser!doNotNeedSessionAndSecurity_logout.sy', function(result) {
			location.replace(sy.contextPath + '/index.jsp');
		}, 'json');
	};
	var showMyInfoFun = function() {
		var dialog = parent.sy.modalDialog({
			title : '我的信息',
			url : sy.contextPath + '/securityJsp/userInfo.jsp'
		});
	};
</script>
<div id="sessionInfoDiv" style="position: absolute; right: 10px; top: 5px;">
<%
		if (session.getAttribute("loginAdmin") != null) {
			%>
			欢迎您， ${loginAdmin.name }
			<%
		}
%>
</div>
<div style="position: absolute; left: 200px; bottom: 0px;">
<s:iterator value="funcList" status="status" id="bean">
	<a href="javascript:void(0);" onclick="leftMenuFlush('<s:property value="id"/>');" class="easyui-linkbutton" data-options="iconCls:''"><s:property value="name"/></a> 
</s:iterator>
</div>
<div style="position: absolute; right: 0px; bottom: 0px;">
	<a href="javascript:void(0);" class="easyui-menubutton" data-options="menu:'#layout_north_pfMenu',iconCls:'ext-icon-rainbow'">更换皮肤</a> <a href="javascript:void(0);" class="easyui-menubutton" data-options="menu:'#layout_north_kzmbMenu',iconCls:'ext-icon-cog'">控制面板</a> <a href="javascript:void(0);" class="easyui-menubutton" data-options="menu:'#layout_north_zxMenu',iconCls:'ext-icon-disconnect'">注销</a>
</div>
<div id="layout_north_pfMenu" style="width: 120px; display: none;">
	<div onclick="sy.changeTheme('default');" title="default">default</div>
	<div onclick="sy.changeTheme('gray');" title="gray">gray</div>
	<div onclick="sy.changeTheme('metro');" title="metro">metro</div>
	<div onclick="sy.changeTheme('bootstrap');" title="bootstrap">bootstrap</div>
	<div onclick="sy.changeTheme('black');" title="black">black</div>
	<div class="menu-sep"></div>
	<div onclick="sy.changeTheme('metro-blue');" title="metro-blue">metro-blue</div>
	<div onclick="sy.changeTheme('metro-gray');" title="metro-gray">metro-gray</div>
	<div onclick="sy.changeTheme('metro-green');" title="metro-green">metro-green</div>
	<div onclick="sy.changeTheme('metro-orange');" title="metro-orange">metro-orange</div>
	<div onclick="sy.changeTheme('metro-red');" title="metro-red">metro-red</div>
</div>
<div id="layout_north_kzmbMenu" style="width: 100px; display: none;">
	<div data-options="iconCls:'ext-icon-user_edit'" onclick="$('#passwordDialog').dialog('open');">修改密码</div>
	<div class="menu-sep"></div>
	<div data-options="iconCls:'ext-icon-user'" onclick="showMyInfoFun();">我的信息</div>
</div>
<div id="layout_north_zxMenu" style="width: 100px; display: none;">
	<div data-options="iconCls:'ext-icon-lock'" onclick="lockWindowFun();">锁定窗口</div>
	<div class="menu-sep"></div>
	<div data-options="iconCls:'ext-icon-door_out'" onclick="logoutFun();">退出系统</div>
</div>