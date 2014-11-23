<%
	/*
	*	Author: Quang Pham
	*
	*/
%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %> 

<div id="subscriptionPlans">
	<h3><strong>Free Trial </strong>– Get a free limited time offer of RemoteEye® services for 7 days.</h3>
	<div>
		<b>FREE!!!</b> <br />
		<ul>
			<li>Subscription required, compatible camera required.</li>
			<li>Access to two tiers ViewNow and StoreNView capabilities as listed below.</li>
			<li>Free trial will end after 7 days, after which you can choose between two tiers.</li>
		</ul>
		<div class="subscribeToCart" id="subTrial">
		<form action="addtocart" method="post">
     			<input type="hidden"name=productId value="<c:out value="y_free"/>">
     			<input type="submit" value="Add To Cart!"/>
     			</form>

       </div>
     </div>
	<h3>
		ViewNow – Subscribe to RemoteEye® and view your camera’s live feed. <br />
		ViewNow offers 30 days of non-stop streaming service.
	</h3>
	<div>
		<b>Only 9.99 per month!</b> <br />
		<ul>
			<li>Subscription required, works great with any compatible camera.</li>
			<li>Click and stream from any computer to view from your selected camera.</li>
			<li>Stunning HD quality video streaming capability.</li>
			<li>Perfect for checking things out at home, your baby room, and your pet at any time!</li>
			<li>RemoteEye® provides for easy playback of videos*</li>
		</ul>
		<div class="subscribeToCart" id="subViewNow">

        
		<form action="addtocart" method="post">
     			<input type="hidden"name=productId value="<c:out value="y_medium"/>">
     			<input type="submit" value="Add To Cart!"/>
     			</form>
        
        </div>
	</div>
	
	<h3>
		StoreNView – Subscribe to RemoteEye® and view your camera’s live feed, <br />
		plus have access to videos for 30 days! <br />
		StoreNView offers 30 days of non-stop streaming service and unlimited storage for 30 days.
	</h3>
	<div>
		<b>Only 44.99 per month! </b> <br />
		<ul>
			<li>Subscription required, works great with any compatible camera.</li>
			<li>Click and stream from any computer to view from your selected camera.</li>
			<li>Stunning HD quality video streaming capability.</li>
			<li>Unlimited access to recorded media any time within 30 days.</li>
			<li>Suitable for those who are keen to secure spaces or just want to capture moments in life.</li>
			<li>RemoteEye® provides for easy playback of videos AND recorded videos*</li>
		</ul>
		<div class="subscribeToCart" id="subStoreNView">
		
		<form action="addtocart" method="post">
     			<input type="hidden"name=productId value="<c:out value="y_exelence"/>">
     			<input type="submit" value="Add To Cart!"/>
     			</form>
		</div>
	</div>
	
</div>

<script type="text/javascript">
   $(function(){ 
	   $("#subscriptionPlans").accordion();
   });
</script>
<%@ include file="Footer.jsp" %> 