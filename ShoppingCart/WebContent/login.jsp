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
%>
<a id="cart" href="cart.jsp"><img id="cart" src="images/carticon.png" title="cart" alt="your cart"></a>
	<p style="color:green;font-size:30px"> Welcome  <%= result%> ...</p>
<div>
<img src="images/laptop.jpg" alt="laptop" >
<span id="price">$800</span>
<span id="firstDesc"><strong>Dell Laptop</strong></span>
</div>	

<div>
<img src="images/mobile.jpg" alt="mobile" />
<span id="price">$500</span>
<span id="desc"><strong>Samsung Mobile</strong></span>
</div>

<div>
<img src="images/earphones.jpg" alt="earphones" />
<span id="price">$300</span>
<span id="desc"><strong>Sony Earphones</strong></span>
</div>

<div>
<img src="images/watch.jpg" alt="watch" />
<span id="price">$350</span>
<span id="desc"><strong>Apple Watch</strong></span>
</div>

<div>
<img src="images/camera.jpg" alt="watch"/>
<span id="price">$600</span>
<span id="desc"><strong>Canon Camera</strong></span>
</div>

<div>
<img src="images/speaker.jpg" alt="watch"/>
<span id="price">$230</span>
<span id="desc"><strong>JBL Speaker</strong></span>
</div>

<div>
<img src="images/AC.jpg" alt="watch"/>
<span id="price">$650</span>
<span id="desc"><strong>Air Conditioner</strong></span>
</div>

<div>
<img src="images/microwave.jpg" alt="watch"/>
<span id="price">$350</span>
<span id="desc"><strong>Microwave</strong></span>
</div>

</body>
</html>