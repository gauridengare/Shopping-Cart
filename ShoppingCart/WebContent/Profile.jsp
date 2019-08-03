<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.demo.service.*" %>
    <%@ page import="com.demo.model.*" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page isELIgnored ="false" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/profile.css">
</head>
<body>

<h1>Welcome to your profile...</h1>
<a style="position:relative;right:-1045px;top:-50px;" id="cart" href="cart.jsp"><img id="cart" src="images/carticon.png" title="cart" alt="your cart"></a>
<a style="position:relative;color:green;font-size:30px;top:-60px;" href="cart_items.jsp">Back to Items</a>
<a style="position:relative;color:green;font-size:30px;top:-90px;left:950px;" href="Profile.jsp">Profile</a>
<a style="position:relative;color:green;font-size:30px;top:-90px;left:960px;" href="logout.jsp">Logout</a>

<div id="about" class="hidden">
<div class="content3">
<form  method="GET"> 
<input type="text" name="firstName" value="First Name" /><br>
<br>
<input type="text" name="lastName" value="Last Name" /><br>
<br>
<input type="text" name="email" value="Email Id" /><br>
<br>
<input type="text" name="phoneNo" value="Mobile Number" /><br>
<br>
<input type="submit" value="Add Profile" formaction="addProfile.jsp">
</form>
</div>
</div>
<div id ="addprofile"><input  type="button" onclick="unhide(this, 'about') " value="Add Profile"></div><br>
</body>
<script type="text/javascript">
function unhide(clickedButton, divID) {
var item = document.getElementById(divID);
if (item) {
    if(item.className=='hidden'){
        item.className = 'unhidden' ;
        clickedButton.className = 'hidden'
    }else{
        item.className = 'hidden';
        clickedButton.value = 'Add Profile'
    }
}}

</script>
<jsp:useBean id="service" class="com.demo.service.UserService" />
<%
	ArrayList<Profile> list = service.viewProfiles();
	if(list != null && list.size() > 0) {
%>

		<table class="table table-striped table-hover">
		
			<tr class="success" >
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email Id</th>
				<th>Phone Number</th>
				<th>Actions</th>
			</tr>
		
<%
			for(Profile p : list) {
%>	
				<tr class="info" >
				
					<td><%= p.getFirstName() %></td>
					<td><%= p.getLastName() %></td>
					<td><%= p.getEmail() %></td>
					<td><%= p.getPhoneNo() %></td>
					<td><form action="./ProfileServ" method="get">
					<input id= "name" type="hidden" value="<%=p.getFirstName()%>" name="name" />
          <button class="btn btn-default"><img src="images/del.png" width="20" /></button></form>
          <button class="btn btn-default"><img src="images/edit.png" width="20" /></button>
        </td>
				</tr>	
<%
			}
	}
	
	else
	{
		//out.println("No products!!");
%>
		<div id="total"><p style="text-align:center;">No Profiles for this account...</p></div>
		<%
	}
		%>
		</table>

</html>