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
		
		<div id="shareContent">
			<div id="shareVideo">Share <span id="shareDirection">&#x25C0;</span></div>
			<div id="shareLinks">
				<div class="shareOption"><img src="images/youtube.png"/></div>
				<div class="shareOption"><img src="images/facebook.png"/></div>
				<div class="shareOption"><img src="images/instagram.jpg"/></div>
			</div>
		</div>
	</div>
</div>

<script>
	var video = document.getElementById("previewVideo");
	var sharedOpen = false;
	$("#videoplayer").dialog({
		autoOpen: false,
		width: 750,
		modal: true,
		close: function(event, ui){
			$("#shareLinks").hide();
			sharedOpen= false;
			$("#shareDirection").html("&#x25C0;");
		}
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
	
	$("#shareLinks").hide();
	$(".shareOption").click(function(){
		alert("Not Available in Demo");
	});
	$("#shareVideo").click(function(){
		if(sharedOpen){
			$("#shareLinks").hide();
			sharedOpen= false;
			$("#shareDirection").html("&#x25C0;");
		}else{
			$("#shareLinks").show("slide", {direction: "right"}, 1000);
			sharedOpen= true;
			$("#shareDirection").html("&#x25B6;");
		}
		
	});
	
</script>
<%@ include file="Footer.jsp" %> 