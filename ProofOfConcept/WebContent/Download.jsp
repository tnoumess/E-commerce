<%
	/*
	*	Author: Quang Pham
	*
	*/
%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %> 
	<div id="tagline">Get Your Camera Communicating with RemoteEye!</div>
	<div id=download">
		<div id="downloadInstr">
			Steps to Setup:
			<ol>
				<li>Click Button to Download</li>
				<li>Run the Executable</li>
				<li>Select a Connected Camera</li>
				<li>Provide Your Username and Password</li>
				<li>Your Camera is Ready For Use on RemoteEye!</li>
			</ol>
			
		</div>
		 <div id="downloadButton" onclick="download();" >Click Here to Download</div>
		 <div id="downloadStart" style="display: none;">Download Starting...</div>
		 <div style="clear:both;"></div>
	 </div>
	 
	 <script>
	 	function download(){
	 		$("#downloadButton").hide();
	 		$("#downloadStart").show(1000);
	 	}
	 </script>
<%@ include file="Footer.jsp" %> 