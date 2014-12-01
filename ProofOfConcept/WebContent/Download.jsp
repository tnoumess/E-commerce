<%
	/*
	*	Author: Quang Pham
	*
	*/
%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %> 
	<div id="tagline">Get Your Camera Communicating with RemoteEye</div>
	<div style="text-align:left;margin-left:60px;margin-bottom:20px;">
		Our patented software will allow your camera to communicate with the Remote Eye services. Set up is as easy as the click of a button.
	</div>
	<div id=download" style="text-align:left;">
		<div id="downloadInstr">
			<span style="font-weight: bold; font-size:18px;">Steps to Setup:</span>
			<div style="margin-left: 40px;margin-top:10px;">
				<ol>
					<li>Click Button to Download</li>
					<li>Run the Executable</li>
					<li>Select a Connected Camera</li>
					<li>Provide Your Username and Password</li>
					<li>Your Camera is Ready For Use on RemoteEye!</li>
				</ol>
			</div>
		</div>
		<img style="display:inline-block;width:525px;height:130px;margin-left:20px;vertical-align:top;" src="images/binary.png"/>
		 <div id="downloadButton" onclick="download();" >Click Here to Download</div>
		 <div id="downloadStart" style="display: none;">Download Starting...</div>
		 <div style="clear:both;"></div>
	 </div>
	 
	 <script>
	 	function download(){
	 		$("#downloadButton").hide();
	 		$("#downloadStart").show();
	 	}
	 </script>
<%@ include file="Footer.jsp" %> 