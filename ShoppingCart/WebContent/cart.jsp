<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.demo.service.*" %>
    <%@ page import="com.demo.model.*" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page isELIgnored ="false" %> 


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src=”https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js”></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/cart.css"> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<h1>Welcome to your cart....</h1>
<jsp:useBean id="service" class="com.demo.service.UserService" />
<%
   int total=0;
	ArrayList<CartItems> list = service.viewCart();
	if(list != null && list.size() > 0) {
%>

		<table class="table table-striped table-hover" style="width:600px height:1000px">
		
			<tr class="success" >
				<th>Item</th>
				<th>Price</th>
				<th>Count</th>
				<th>Action</th>
			</tr>
		
<%
			for(CartItems p : list) {
				total=total+(p.getItem_price()*p.getItem_count());
%>	
				<tr class="info" >
				
					<td><%= p.getItem_name() %></td>
					<td><%= p.getItem_price() %></td>
					<td><%= p.getItem_count() %></td>
					<td><form action="./demo" method="post">
					<input id= "item" type="hidden" value="<%=p.getItem_name()%>" name="item" /><li>
          <button class="btn btn-default"><img src="images/del.png" width="20" /></button>
        </li></form></td>
				</tr>	
<%
			}
	}
	
	else
	{
		//out.println("No products!!");
%>
		<div id="total"><p style="text-align:center;">Cart is Empty...</p></div>
		<%
	}
		%>
		</table>
		<div id="total"><p style="text-align:center;">Total Amount :$<%= total %></p></div>
</body>
</html>