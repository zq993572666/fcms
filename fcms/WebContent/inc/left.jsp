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
	
		funcid="<s:property value="funcid" />";
		 mainMenu = $('#mainMenu').tree({
			url:sy.basePath+"/admin/admin_left.do",
			/* data:treeSting, */
		 	parentField : 'pid', 
			onClick : function(node) {
				debugger
				if (node.attributes.url) {
					linkUrl=node.attributes.url;
					 if(linkUrl.indexOf("?")>-1){
						linkUrl+="&pageFuncId=<s:property value="id"/>";
					}
				linkUrl+="?pageFuncId=<s:property value="id"/>";
				var src =sy.basePath+"/admin/"+linkUrl; 
					//var src =sy.basePath+ "/admin/"+node.attributes.url;
					
					if (node.attributes.target && node.attributes.target.length > 0) {
						window.open(src, node.attributes.target);
					} else {
						var tabs = $('#mainTabs');
						var opts = {
							title : node.text,
							closable : true,
							iconCls : node.iconCls,
							content : sy.formatString('<iframe src="{0}" allowTransparency="true" style="border:0;width:100%;height:99%;" frameBorder="0"></iframe>', src),
							border : false,
							fit : true
						};
						if (tabs.tabs('exists', opts.title)) {
							tabs.tabs('select', opts.title);
						} else {
							tabs.tabs('add', opts);
						}
					}
				}
			}
		}); 

	});
</script>

		<s:if test="%{#session.manageSite != null}">
			<a href="javascript:void(0);" title="点击选择管理站点" onclick="managerSite();" class="easyui-menubutton" data-options="iconCls:'ext-icon-rainbow'"><fs:string len="8" str="${manageSite.name }"></fs:string></a> 
			<img style="cursor:hand" onclick="window.open('<%=basePath %>site/${manageSite.sourcepath }/index.html');" title="点击预览站点" src="../img/www.gif">
		</s:if>
		<s:if test="%{#session.manageSite == null}">
			<a href="javascript:void(0);" title="点击选择管理站点" onclick="managerSite();" class="easyui-menubutton" data-options="iconCls:'ext-icon-rainbow'">请选择管理站点</a> 
		</s:if>
		<ul id="mainMenu"></ul>

