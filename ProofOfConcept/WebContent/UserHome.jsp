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
	<div class="contentItem">
		<div class="userContentTitle">Subscription Plan:</div>
		<div class="userContentData">Live Plan (subscribed)</div>
		<div class="userContentData">On-Demand Plan</div>
		<div class="userContentData">Trial</div>
		<div class="add" id="addSubscription">Add</div>
	</div>
	
	<div class="contentItem">
	 	<div class="userContentTitle">Cameras:</div>
	 	<div class="userContentData">Living Room (North)</div>
	 	<div class="userContentData">Living Room (South)</div>
	 	<div class="userContentData">Kitchen (West)</div>
	 	<div class="userContentData">Kitchen (East)</div>
		<div class="add" id="addCamera">Add</div>
	</div>
</div>
<%@ include file="Footer.jsp" %> 