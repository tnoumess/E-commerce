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
<div class="userTitle">My Saved Videos</div>


	<div id="videoPreviewPanel">
		<div class="imagePreview"><img src="images/dogPrev.png" onclick="playvideo('bedroom.mp4', 'Roughing It Ralph')"/> <div>Roughing It Ralph</div></div>
		<div  class="imagePreview"><img src="images/trashPrev.png" onclick="playvideo('trash.mp4', 'Messy Megan')" /> <div>Messy Megan</div></div>
		<div  class="imagePreview"><img src="images/diningPrev.png" onclick="playvideo('diningRoom.mp4', 'Silly Sally');" /> <div>Silly Sally</div></div>
	</div>
	
	<div id="videoplayer">
		<video id="previewVideo" controls>
		  <source id="video" type="video/mp4">
		Your browser does not support the our video player.
		</video>
	
	</div>
</div>

<script>
	var video = document.getElementById("previewVideo");
	
	$("#videoplayer").dialog({
		autoOpen: false,
		width: 750,
		modal: true
	});
	
	function playvideo(file, title){
		$("#video").attr("src", "videos/"+file);
		$("#videoplayer").dialog("option", "title", title );
		$("#videoplayer").dialog("option", "position", { my: "center top+25", at: "center top+25", of: window } );
		$("#videoplayer").dialog("open");
		
		video.load();
		video.play();
	}
	
	
	video.addEventListener('click',function(){
		this.paused ? this.play() : this.pause();
	},false);
</script>
<%@ include file="Footer.jsp" %> 