    <%@ page language="java" pageEncoding="UTF-8"%>  
    <%@taglib prefix="s" uri="/struts-tags" %>  
    <%@taglib prefix="tangs" uri="/tangs" %>  
    <%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
    %>  
      
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
    <html>  
      <head>  
        <base href="<%=basePath%>">  
          
        <title>My JSP 'buttonTag.jsp' starting page</title>  
      
      </head>  
        
      <body>  
        页面直接给定属性<br/>  
        <tangs:button items="apple,orange,banana"/>  
          
        <br/>  
        <br/>  
        运行时获取值<br/>  
        <tangs:button items="fruits"/>  
      </body>  
    </html>  