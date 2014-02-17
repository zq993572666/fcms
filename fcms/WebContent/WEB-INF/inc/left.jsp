<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="fs" uri="/fs-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="inc.jsp"></jsp:include>
<script type="text/javascript">
	function ajaxLeftMenu(){
	 mainMenu = $('#mainMenu').tree({
		 data:treeSting, 
	 	parentField : 'pid', 
		onClick :function(node) {
			if (node.attributes.url) {
				linkUrl=node.attributes.url;
				 if(linkUrl.indexOf("?")>-1){
					linkUrl+="&pageFuncId=<s:property value="id"/>";
				}
			linkUrl+="?pageFuncId=<s:property value="id"/>";
			var src =sy.basePath+"/admin/"+linkUrl; 
				
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
		}  ,onBeforeExpand:function(node) {
			 var node = $('#mainMenu').tree('getSelected');
		        var b = $('#mainMenu').tree('isLeaf', node.target);
		      //  alert(b);
		}  
		
	});    

}
	$(function() {
		$.ajax({
			   type: "POST",
			   async: false,
			   url:sy.basePath+"/admin/admin_left.do",
			   success: function(data){
				   debugger
				   treeSting=data.ptreeMenuList;
			   },dataType:"json"
			});
		ajaxLeftMenu();

	});
</script>
	<div data-options="href:'',split:true"  style="width: 200px; padding: 10px;">
		<s:if test="%{#session.manageSite != null}">
			<a href="javascript:void(0);" title="点击选择管理站点" onclick="managerSite();" class="easyui-linkbutton" data-options="iconCls:'ext-icon-rainbow'"><fs:string len="8" str="${manageSite.name }"></fs:string></a> 
			<img style="cursor:hand" onclick="window.open('<%=basePath %>site/${manageSite.sourcepath }/index.html');" title="点击预览站点" src="../img/www.gif">
		</s:if>
		<s:if test="%{#session.manageSite == null}">
			<a href="javascript:void(0);" title="点击选择管理站点" onclick="managerSite();" class="easyui-menubutton" data-options="iconCls:'ext-icon-rainbow'">请选择管理站点</a> 
		</s:if>
		<ul id="mainMenu"></ul>
	</div>
