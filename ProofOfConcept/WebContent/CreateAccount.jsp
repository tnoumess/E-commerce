<%
	/*
	*	Author: Trillane Burlar
	*
	*/
%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %> 

<link href="CSS/mysheet.css" rel="stylesheet" type="text/css" />
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div style="height: 250px;">


	<form action="createaccount" method="POST">
		<div style="margin:0 auto;max-width:300px">
			<h2>Create An Account</h2>
			<div class="formRow">
				<div class="formLabel">Name:</div><input type="text" id="name" name="name"/>
			</div>
			<div class="formRow">
				<div class="formLabel">Password:</div><input type="password" id="password1" name="password1"/>
			</div>
			<div class="formRow">
				<div class="formLabel">Re-enter Password:</div><input type="password" id="password2" name="password2"/>
			</div>
			<div style="text-align:right;">
				<input type="submit" value="Create Account"/>
			</div>
			<div id="error" class="error">
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
