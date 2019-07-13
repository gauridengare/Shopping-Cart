<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.demo.service.*" %>
    <%@ page import="com.demo.model.*" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/login.css"> 
</head>
<body>

<jsp:useBean id="service" class="com.demo.service.UserService" />
<jsp:useBean id="user" class="com.demo.model.User" />
<jsp:setProperty property="*" name="user" />
<%
String result = service.login(user);
if(result==null)
{
	response.sendRedirect("error.jsp");
}
else
{
	response.sendRedirect("cart_items.jsp");
}
session.setAttribute("userId", result);
%>
</body>
</html>