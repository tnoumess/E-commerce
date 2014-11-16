<%
	/*
	*	Author: Quang Pham
	*
	*/
%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %> 

<div id="subscriptionPlans">
	<h3>Free Trial</h3>
	<div><p>Free Trial for a week.  See why everyone is using RemoteEye!</p></div>
	<h3>ViewNow</h3>
	<div>
		Our streaming option. See your video feeds live!
	</div>
	
	<h3>StoreNView</h3>
	<div>
		The ultimate package! Stream, Stores, and Share your videos!
	</div>
	
</div>

<script type="text/javascript">
   $(function(){ 
	   $("#subscriptionPlans").accordion();
   });
</script>
<%@ include file="Footer.jsp" %> 