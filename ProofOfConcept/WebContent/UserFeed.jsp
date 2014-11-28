<%
	/*
	*	Author: Quang Pham
	*
	*/
%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %> 
<%@ include file="UserTopMenu.jsp" %> 
<div class="userContent">
<div class="userTitle">My Live Feeds</div>

	<div id="mainVideoPanel">
		<video id="mainVideo" controls>
		  <source id="video" src="videos/diningRoom.mp4" type="video/mp4">
		Your browser does not support the video tag.
		</video>
	</div> 
	<div id="videoFeedPanel">
		<div><img src="images/diningPrev.png" onclick="playvideo('diningRoom.mp4');" /><div>Living Room</div></div>
		<div><img src="images/trashPrev.png" onclick="playvideo('trash.mp4');" /><div>Kitchen</div></div>
		<div><img src="images/dogPrev.png" onclick="playvideo('livingroom.mp4');" /><div>Bed Room</div></div>
	</div>
</div>

<script>
var video = document.getElementById("mainVideo");
video.play();
	function playvideo(file){
		$("#video").attr("src", "videos/"+file);
		var video = document.getElementById("mainVideo");
		video.load();
		video.play();
	}
	

</script>
<%@ include file="Footer.jsp" %> 