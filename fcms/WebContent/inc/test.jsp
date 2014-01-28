<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="inc.jsp"></jsp:include>
	<script type="text/javascript">
	function test(){
		alert($("#text1").val());
	}
	</script>
</head>
<body>
	<h2>Basic Menu</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>Right click on page to display menu.</div>
	</div>
	<div style="margin:10px 0;"></div>
	
	<div id="mm" class="easyui-menu" style="width:120px;">
		<div onClick="javascript:alert('new')">New</div>
		<div>
			<span>Open</span>
			<div style="width:150px;">
				<div><b>Word</b></div>
				<div>Excel</div>
				<div>PowerPoint</div>
				<div>
					<span>M1</span>
					<div style="width:120px;">
						<div>sub1</div>
						<div>sub2</div>
						<div>
							<span>Sub</span>
							<div style="width:80px;">
								<div onClick="javascript:alert('sub21')">sub21</div>
								<div>sub22</div>
								<div>sub23</div>
							</div>
						</div>
						<div>sub3</div>
					</div>
				</div>
				<div>
					<span>Window Demos</span>
					<div style="width:120px;">
						<div data-options="href:'window.html'">Window</div>
						<div data-options="href:'dialog.html'">Dialog</div>
						<div><a href="http://www.jeasyui.com" target="_blank">EasyUI</a></div>
					</div>
				</div>
			</div>
		</div>
		<div data-options="iconCls:'icon-save'">Save</div>
		<div data-options="iconCls:'icon-print',disabled:true">Print</div>
		<div class="menu-sep"></div>
		<div>Exit</div>
	</div>
	<script>
		$(function(){
			$(document).bind('contextmenu',function(e){
				e.preventDefault();
				$('#mm').menu('show', {
					left: e.pageX,
					top: e.pageY
				});
			});
		});
	</script>
</body>
</html>