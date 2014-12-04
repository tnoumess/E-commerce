<%
	/*
	*	Author: Trillane Burlar
	*
	*/
%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %> 
<div style="width:450px; margin:0 auto;background-color:#8aa3a3;border-radius:5px;padding:20px;">
	<img  src="images/padlock.png" style="height:32px;vertical-align:top;">
	<div id="tagline" style="text-align:left;margin-bottom:10px;margin-left:0px;display:inline-block;vertical-align:top;height:32px;line-height:32px;padding-top:0px;">Sign into RemoteEye®</div>
	<form action="login" method="post">
			<div style="margin:0 auto;width:340px;text-align:left;">
			<div class="formRow">
				<div class="formLabel" style="text-align:right;padding-right:5px;">Username:</div><input type="email" id="name" name="name" required/>
			</div>
			<div class="formRow">
				<div class="formLabel" style="text-align:right;padding-right:5px;">Password:</div><input type="password" id="password" name="password" required/>
			</div>
			<div style="text-align:center;margin-top:10px;">
				<input type="submit" value="Sign In"/>
			</div>
			<div id="error" class="error" style="text-align:center;margin-top:20px;">
				<%
					String msg = request.getParameter("errorMsg");
					if(msg != null)
						out.print(msg);
				%>
			</div>
			<div style="text-align:center;margin-top:20px;">
				Don't have an account? <a class="buttonRemoteEye" style="color:white;padding-left:5px;padding-right:5px;font-size:18px;height:32px;line-height:32px;display:inline-block;" href="CreateAccount.jsp">Create one.</a>
			</div>
		</div>
	</form>
	
</div>

<%@ include file="Footer.jsp" %> 
