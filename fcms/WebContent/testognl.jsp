<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
 <s:set name="val1" value="\"key1\"" />
<s:property value="#val1" /><br> 
<s:set name="list" value="{'zhangming','xiaoi','liming'}" />

<s:iterator value="#list" id="n">

<s:property value="#n"/><br>

</s:iterator>
<p>
<s:set name="foobar" value="#{'foo1':'bar1', 'foo2':'bar2'}" />

<s:iterator value="#foobar" >

<s:property value="key"/>=<s:property value="value"/><br>

</s:iterator>

 
<p>
1&nbsp;&nbsp;<s:property value="'mapValues[key'+1+']'" /><br>
2&nbsp;&nbsp;<s:property value="%{'mapValues[key'+1+']'}" /><br>
3&nbsp;&nbsp;<a href="<s:url value="#mapValues['key1']" />" > 1</a>  <br> 

4&nbsp;&nbsp;<a href="<s:url value="%{#mapValues['key1']}" />" >2</a>  

</body>
</html>