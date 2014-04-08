<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="page" uri="/page"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

   
    <title>easyDemo1.jsp</title>
 <link rel="stylesheet" type="text/css" href="/js/easyUI/themes/default/easyui.css">
 <link rel="stylesheet" type="text/css" href="/js/easyUI/themes/icon.css">
 <script type="text/javascript" src="/js/easyUI/jquery.min.js"></script>
 <script type="text/javascript" src="/js/easyUI/jquery.easyui.min.js"></script>
 
</head>
<body>
 <page:pages pageNo="pageInfo.pageNo" total="pageInfo.total" 
 pageSize="pageInfo.pageSize"
								count="pageInfo.count"
							/>
								
</body>
</html>