<%
	/*
	*	Author: Trillane Burlar
	*
	*	Header include page for .jsp's
	*/
%>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>INFS640 Project</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	<div id="outerDiv" style="">
		<div id="innerDiv">
			<div id="header">
				<div id="topbar">
					<div class="lefthalf">
						Name and Logo Here Could span two rows
					</div><div class="righthalf"> <!--  On one line for a reason -->
						<%
							Object userName = request.getSession().getAttribute("user");
							boolean showSignOut = false;
							if(userName == null){
								out.print("<a href=\"Login.jsp\">Sign In</a>");
							}
							else {
								out.print(userName.toString());
								showSignOut = true;
							}
						%>
						<img src="images/cart.png" style="vertical-align:top"/>
						<%
							if(showSignOut){
								out.print("<a href=\"logout\">Sign Out</a>");
							}
						%>
					</div>
				</div>
				<div id="menubar">
					<!-- Yes, these are all on one line for a reason -->
					<!--  TODO add jsp logic to determine which is selected -->
					<div class="menuItem menuItemSelected">Why</div><div class="menuItem">Products</div><div class="menuItem">Get Started</div><div class="menuItem">Download</div>
				</div>
			</div>