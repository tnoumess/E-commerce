<%
	/*
	*	Author: Trillane Burlar
	*
	*/
%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %> 

<link href="CSS/mysheet.css" rel="stylesheet" type="text/css" />

<div style="width:450px; margin:0 auto;background-color:#8aa3a3;border-radius:5px;padding:20px;">
	<img  src="images/padlock.png" style="height:32px;vertical-align:top;">
	<div id="tagline" style="text-align:left;margin-bottom:10px;margin-left:0px;display:inline-block;vertical-align:top;height:32px;line-height:32px;padding-top:0px;">Create a Remote Eye account</div>
	<form action="createaccount" method="POST">
		<div style="margin:0 auto;width:340px">
			<div class="formRow">
				<div class="formLabel" style="width:150px;text-align:right;padding-right:5px;">Username:</div><input type="email" id="name" name="name" required/>
			</div>
			<div class="formRow">
				<div class="formLabel" style="width:150px;text-align:right;padding-right:5px;">Password:</div><input type="password" id="password1" name="password1" required/>
			</div>
			<div class="formRow">
				<div class="formLabel" style="width:150px;text-align:right;padding-right:5px;">Re-enter Password:</div><input type="password" id="password2" name="password2" required/>
			</div>
			<div style="text-align:center;margin-top:10px;">
				<input type="submit" value="Create Account"/>
			</div>
			<div id="error" class="error" style="text-align:center;margin-top:20px;">
				<%
					String msg = request.getParameter("errorMsg");
					if(msg != null)
						out.print(msg);
				%>
			</div>
		</div>
	</form>
</div>

<%@ include file="Footer.jsp" %> 
