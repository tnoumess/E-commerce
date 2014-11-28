<%
	/*
	*	Author: Quang Pham
	*
	*/
%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %> 

<div id="subscriptionPlans">
	<div id="tagline">RemoteEye's Subscription Plans</div>
	<div class="planContainer" id="planFree">
		<div class="plan">
			<div class="planTitle">Free Trial </div>
			<div class="planPrice">FREE!!!</div>
			<div class="planDescription">
				Get a free limited time offer of RemoteEye® services for 7 days.
				<ul>
					<li>Subscription required, compatible camera required.</li>
					<li>Access to two tiers ViewNow and StoreNView capabilities as listed below.</li>
					<li>Free trial will end after 7 days, after which you can choose between two tiers.</li>
				</ul>

		     </div>
	     </div>
	     <form action="addtocart" method="post" id="subTrial">
 			<div class="subscribeToCart" onclick="document.getElementById('subTrial').submit();">
     			<input type="hidden"name=productId value="<c:out value="y_free"/>">
     			Add To Cart!
  			</div>	
  		</form>

     </div>
     <div class="planContainer"  id="planView">
	     <div class="plan">
			<div class="planTitle">ViewNow </div> 
			<div class="planPrice">Only 9.99 per month!</div>
			<div class="planDescription">
				Subscribe to RemoteEye® and view your camera’s live feed. <br />
				ViewNow offers 30 days of non-stop streaming service.
				
				<ul>
					<li>Subscription required, works great with any compatible camera.</li>
					<li>Click and stream from any computer to view from your selected camera.</li>
					<li>Stunning HD quality video streaming capability.</li>
					<li>Perfect for checking things out at home, your baby room, and your pet at any time!</li>
					<li>RemoteEye® provides for easy playback of videos*</li>
				</ul>
			</div>
		</div>
		<form action="addtocart" method="post" id="cartViewNow">
			<div class="subscribeToCart" id="subStoreNView" onclick="document.getElementById('cartViewNow').submit();">
     			<input type="hidden"name=productId value="<c:out value="y_medium"/>">
     			Add To Cart!
        	</div>
        </form>
	</div>
	<div class="planContainer" id="planStore">
		<div class="plan">
			<div class="planTitle">StoreNView </div> 
			<div class="planPrice">Only 44.99 per month!</div>
			<div class="planDescription">
				StoreNView – Subscribe to RemoteEye® and view your camera’s live feed, <br />
				plus have access to videos for 30 days! <br />
				StoreNView offers 30 days of non-stop streaming service and unlimited storage for 30 days.
				<ul>
					<li>Subscription required, works great with any compatible camera.</li>
					<li>Click and stream from any computer to view from your selected camera.</li>
					<li>Stunning HD quality video streaming capability.</li>
					<li>Unlimited access to recorded media any time within 30 days.</li>
					<li>Suitable for those who are keen to secure spaces or just want to capture moments in life.</li>
					<li>RemoteEye® provides for easy playback of videos AND recorded videos*</li>
				</ul>
				
			</div>
		</div>
		<form action="addtocart" method="post" id="cartStoreView">
			<div class="subscribeToCart" id="subStoreNView" onclick="document.getElementById('cartStoreView').submit();">
     			<input type="hidden"name=productId value="<c:out value="y_exelence"/>">
     			Add To Cart!
			</div>
		</form>
	</div>
	<div style="clear:both;"></div>
</div>

<%@ include file="Footer.jsp" %> 