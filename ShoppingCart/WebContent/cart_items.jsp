<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/login.css"> 
</head>
<body>
<% 
Object userid = session.getAttribute("userId"); 
%>
<a id="cart" href="cart.jsp"><img id="cart" src="images/carticon.png" title="cart" alt="your cart"></a>
	<p style="color:green;font-size:30px"> Welcome  <%= userid %> ...</p>
<div>
<form action="./demo" method="get">
<img src="images/laptop.jpg" alt="laptop" >
<span id="price">$800</span>
<span id="firstDesc"><strong>Dell Laptop</strong></span>
<input id="item" name="item" value="Dell Laptop" type="hidden" />
<input id="item_price" name="item_price" value="800" type="hidden" />
<span><button id="addcart" type="submit">Add to Cart</button></form></span>
</div>	


<div>
<form action="./demo" method="get">
<img src="images/mobile.jpg" alt="mobile" />
<span id="price">$500</span>
<span id="desc"><strong>Samsung Mobile</strong></span>
<input id="item" name="item" value="Samsung Mobile" type="hidden" />
<input id="item_price" name="item_price" value="500" type="hidden" />
<span><button id="addcart" type="submit">Add to Cart</button></form></span>
</div>


<div>
<form action="./demo" method="get">
<img src="images/earphones.jpg" alt="earphones" />
<span id="price">$300</span>
<span id="desc"><strong>Sony Earphones</strong></span>
<input id="item" name="item" value="Sony Earphones" type="hidden" />
<input id="item_price" name="item_price" value="300" type="hidden" />
<span><button id="addcart" type="submit">Add to Cart</button></form></span>
</div>


<div>
<form action="./demo" method="get">
<img src="images/watch.jpg" alt="watch" />
<span id="price">$350</span>
<span id="desc"><strong>Apple Watch</strong></span>
<input id="item" name="item" value="Apple Watch" type="hidden" />
<input id="item_price" name="item_price" value="350" type="hidden" />
<span><button id="addcart" type="submit">Add to Cart</button></form></span>
</div>

<div>
<form action="./demo" method="get">
<img src="images/camera.jpg" alt="watch"/>
<span id="price">$600</span>
<span id="desc"><strong>Canon Camera</strong></span>
<input id="item" name="item" value="Canon Camera" type="hidden" />
<input id="item_price" name="item_price" value="600" type="hidden" />
<span><button id="addcart" type="submit">Add to Cart</button></form></span>
</div>

<div>
<form action="./demo" method="get">
<img src="images/speaker.jpg" alt="watch"/>
<span id="price">$230</span>
<span id="desc"><strong>JBL Speaker</strong></span>
<input id="item" name="item" value="JBL Speaker" type="hidden" />
<input id="item_price" name="item_price" value="230" type="hidden" />
<span><button id="addcart" type="submit">Add to Cart</button></form></span>
</div>

<div>
<form action="./demo" method="get">
<img src="images/AC.jpg" alt="watch"/>
<span id="price">$650</span>
<span id="desc"><strong>Air Conditioner</strong></span>
<input id="item" name="item" value="Air Conditioner" type="hidden" />
<input id="item_price" name="item_price" value="650" type="hidden" />
<span><button id="addcart" type="submit">Add to Cart</button></form></span>
</div>

<div>
<form action="./demo" method="get">
<img src="images/microwave.jpg" alt="watch"/>
<span id="price">$350</span>
<span id="desc"><strong>Microwave</strong></span>
<input id="item" name="item" value="Microwave" type="hidden" />
<input id="item_price" name="item_price" value="350" type="hidden" />
<span><button id="addcart" type="submit">Add to Cart</button></form></span>
</div>

</body>
</html>