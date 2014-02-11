<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="fs" uri="/fs-tags" %>
<jsp:include page="inc.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
	
	var treeSting;
	var treeArray=new Array();
	treeSting=<%=session.getAttribute("funcs")%>;
	/*  for(i=0;i<treeSting.length;i++){
		d=treeSting[i];
		if(funcid==d.parid){
			treeArray.push(d);
		}
	}  */
	funcid="<s:property value="funcid" />";
//	var dataObj=eval("("+treeSting+")");//转换为json对象
	//dataObj= jQuery.parseJSON(treeSting);
/*  	for(i=0;i<dataObj.length;i++){
		d=dataObj[i];
		if(funcid==d.parid){
			treeArray.push(d);
		}
	}  */
 	debugger
 	aArray=treeArray;
		 mainMenu = $('#mainMenu').tree({
			 // url : sy.basePath  + '/admin/admin_left.do',  
			data:treeSting,
		 	parentField : 'pid', 
			onClick : function(node) {
				debugger
				if (node.attributes.url) {
					var src =sy.basePath+ "/admin/"+node.attributes.url;
					
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



	<div data-options="region:'west',href:'',split:true" title="导航" style="width: 200px; padding: 10px;">
		<ul id="mainMenu"></ul>

	</div>
