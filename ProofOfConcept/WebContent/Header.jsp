<%
	/*
	*	Author: Trillane Burlar
	*
	*	Header include page for .jsp's
	*/
	
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>INFS640 Project</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="SCRIPT/jquery.js">  </script>
	<script>
	$( document ).ready(function() {
	$("#checkoutImg").mouseover(function(){
		if(document.getElementById("good").value=="null")
			//alert()
			 $("#link").bind('click',false);
		
	});
	});
	</script>
</head>

<body>
	<div id="outerDiv" style="">
		<div id="innerDiv">
			<div id="header">
				<div id="topbar">
					<div class="lefthalf">
						<img alt="" src="images/INFS640.gif"  height="50" width="200">
					</div><div class="righthalf"> <!--  On one line for a reason -->
						<%
							Object userName = request.getSession().getAttribute("user");
							boolean showSignOut = false;
							if(userName == null){
								out.print("<a href=\"Login.jsp\">Sign In</a>");
							}
							else {
								out.print("<a href=\"UserHome.jsp\">" + userName.toString()+"</a>");
								showSignOut = true;
							}
						%>
				<a href="cart.jsp" id="link"> <img src="images/cart.png" style="vertical-align:top" id="checkoutImg"/>   </a>
						<%
							if(showSignOut){
								out.print("<a href=\"logout\">Sign Out</a>");
							}
						%>
					</div>
				</div><br>
				<div id="menubar">
					<!-- Yes, these are all on one line for a reason -->
					<!--  TODO add jsp logic to determine which is selected -->
					<div class="menuItem <%= request.getServletPath().substring(1).compareTo("Welcome.jsp") == 0 ? "menuItemSelected" : "" %>"><a href="Welcome.jsp">Why</a></div><div class="menuItem <%= request.getServletPath().substring(1).compareTo("Products.jsp") == 0 ? "menuItemSelected" : "" %>"><a href="product">Products</a></div><div class="menuItem">Get Started</div><div class="menuItem">Download</div>
				</div>
			</div>
			<% Object val=request.getSession().getAttribute("cart");%>
<input type="text" id="good" value="<% out.print(val);%>">