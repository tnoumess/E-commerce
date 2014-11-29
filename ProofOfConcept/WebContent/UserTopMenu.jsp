
<div class="userMenu">
<!--TODO: only provide options base on subscriptions -->
	<a href="UserFeed.jsp">
		<div class='menuItem <%= request.getServletPath().substring(1).compareTo("UserFeed.jsp") == 0 ? " leftMenuSelected" : "" %>'>
			<div class="menuText">My Feeds</div>
		</div>
	</a>
	<a href="UserVideos.jsp">
		<div class='menuItem <%= request.getServletPath().substring(1).compareTo("UserVideos.jsp") == 0 ? " leftMenuSelected" : "" %>'>
			<div class="menuText">My Videos</div>
		</div>
	</a>
	<div style="clear:both;"></div>
</div>


