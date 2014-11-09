<%
	/*
	*	Author: Quang Pham
	*
	*/
%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %> 
<%@ include file="UserLeftMenu.jsp" %> 
<div class="userContent">
	<div id="mainVideoPanel">
		<video id="mainVideo" controls>
		  <source src="http://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4">
		Your browser does not support the video tag.
		</video>
	</div> 
	<div id="videoPreviewPanel">
		<img src="images/playImage.jpg" />
		<img src="images/playImage.jpg" />
		<img src="images/playImage.jpg" />
		<img src="images/playImage.jpg" />
	</div>
</div>
<%@ include file="Footer.jsp" %> 