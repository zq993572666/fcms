<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 

<%@taglib prefix="fs" uri="/fs-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>SSHE</title>
<jsp:include page="inc.jsp"></jsp:include>
<script type="text/javascript">
	var mainMenu;
	var mainTabs;
	var treeSting;
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
				   treeSting=data;
			   }
			});
		ajaxLeftMenu();
			
		$('#mainLayout').layout('panel', 'center').panel({
			onResize : function(width, height) {
				sy.setIframeHeight('centerIframe', $('#mainLayout').layout('panel', 'center').panel('options').height - 5);
			}
		});

		mainTabs = $('#mainTabs').tabs({
			fit : true,
			border : false,
			tools : [ {
				iconCls : 'ext-icon-arrow_up',
				handler : function() {
					mainTabs.tabs({
						tabPosition : 'top'
					});
				}
			}, {
				iconCls : 'ext-icon-arrow_left',
				handler : function() {
					mainTabs.tabs({
						tabPosition : 'left'
					});
				}
			}, {
				iconCls : 'ext-icon-arrow_down',
				handler : function() {
					mainTabs.tabs({
						tabPosition : 'bottom'
					});
				}
			}, {
				iconCls : 'ext-icon-arrow_right',
				handler : function() {
					mainTabs.tabs({
						tabPosition : 'right'
					});
				}
			}, {
				text : '刷新',
				iconCls : 'ext-icon-arrow_refresh',
				handler : function() {
					var panel = mainTabs.tabs('getSelected').panel('panel');
					var frame = panel.find('iframe');
					try {
						if (frame.length > 0) {
							for (var i = 0; i < frame.length; i++) {
								frame[i].contentWindow.document.write('');
								frame[i].contentWindow.close();
								frame[i].src = frame[i].src;
							}
							if (navigator.userAgent.indexOf("MSIE") > 0) {// IE特有回收内存方法
								try {
									CollectGarbage();
								} catch (e) {
								}
							}
						}
					} catch (e) {
					}
				}
			}, {
				text : '关闭',
				iconCls : 'ext-icon-cross',
				handler : function() {
					var index = mainTabs.tabs('getTabIndex', mainTabs.tabs('getSelected'));
					var tab = mainTabs.tabs('getTab', index);
					if (tab.panel('options').closable) {
						mainTabs.tabs('close', index);
					} else {
						$.messager.alert('提示', '[' + tab.panel('options').title + ']不可以被关闭！', 'error');
					}
				}
			} ]
		});

	});
	
	/*根据一级菜单（站点，会员，系统等）刷新系统左侧菜单*/
	function flushMenu(fid){
		
	 	$.ajax({
			   type: "POST",
			   async: false,
			   url:sy.basePath+"/admin/admin_left.do?funcid="+fid,
			   success: function(data){
				   treeSting=data;
			   }
			});
		ajaxLeftMenu();
		
	}
	
	/*根据选择的站点刷新系统左侧菜单*/
	function flushMenuBySite(siteid){
		
		$.ajax({
			   type: "POST",
			   async: false,
			   url:sy.basePath+"/admin/admin_left.do?siteid="+siteid,
			   success: function(data){
				   treeSting=data;
			   }
			});
		ajaxLeftMenu();
		flushSiteName();
		
	}

	function managerSite(){
		src='<%=basePath%>admin/cms/site_site.do?type=siteSelectPage'
			var tabs = $('#mainTabs');
		var opts = {
			title : '管理站点',
			closable : true,
			iconCls :'' ,
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
	function flushSiteName(){
		var text;
		var siteName;
		 <s:if test="%{#session.manageSite != null}">
			 text="<a href=\"javascript:void(0);\" title=\"点击选择管理站点\" onclick=\"managerSite();\" class=\"easyui-menubutton\" data-options=\"iconCls:'ext-icon-rainbow'\" >"+siteName+"</a>"+"<img style=\"cursor:hand\" onclick=\"window.open('<%=basePath %>site/${manageSite.sourcepath }/index.html');\" title=\"点击预览站点\" src=\"../img/www.gif\" >"; 
		</s:if>
		$('#siteMenu').text(text);
		
	}
</script>
</head>
<body id="mainLayout" class="easyui-layout">

	<div data-options="region:'north',href:'<%=basePath%>/admin/admin_top.do'" style="height: 70px; overflow: hidden;" class="logo"></div>
	<div data-options="region:'west',href:'',split:true" title="导航" style="width: 200px; padding: 10px;">
		<ul id="mainMenu"></ul>
	</div>
	<div data-options="region:'center'" style="overflow: hidden;">
		<div id="mainTabs">
			
		</div>
	</div>
	<div data-options="region:'south',href:'foot.jsp',border:false" style="height: 30px; overflow: hidden;"></div>
	
</body>
</html>