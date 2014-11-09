<div class="leftMenu">
<!--TODO: only provide options base on subscriptions -->
	<div <%= request.getServletPath().substring(1).compareTo("UserVideos.jsp") == 0 ? "class='leftMenuSelected'" : "" %>><a href="UserVideos.jsp">My Videos</a></div>
	<div <%= request.getServletPath().substring(1).compareTo(".jsp") == 0 ? "class='leftMenuSelected'" : "" %>><a href="">Cameras</a></div>
	<div <%= request.getServletPath().substring(1).compareTo(".jsp") == 0 ? "class='leftMenuSelected'" : "" %>><a href="">Subscribe</a></div>
</div>