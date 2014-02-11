<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="fs" uri="/fs-tags" %>
<jsp:include page="inc.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
	
		var treeSting;
		treeSting=<%=session.getAttribute("funcs")%>;
		funcid="<s:property value="funcid" />";
	 	debugger
			 mainMenu = $('#mainMenu').tree({
				data:treeSting,
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



<!-- 	<div data-options="region:'west',href:'',split:true" title="导航" style="width: 200px; padding: 10px;">
		<ul id="mainMenu"></ul>

	</div>
 -->