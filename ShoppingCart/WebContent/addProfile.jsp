<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.demo.service.*" %>
    <%@ page import="com.demo.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="service" class="com.demo.service.UserService" />
<jsp:useBean id="profile" class="com.demo.model.Profile" />
<jsp:setProperty property="*" name="profile" />
<%
int result = service.insertProfile(profile);
if(result > 0)
	response.sendRedirect("Profile.jsp");
else
	response.sendRedirect("error.jsp");

%>
</body>
</html>