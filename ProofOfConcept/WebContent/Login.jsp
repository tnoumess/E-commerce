<%
	/*
	*	Author: Trillane Burlar
	*
	*/
%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %> 
<div style="height: 250px; width:100%; margin-left: auto; margin-right: auto;">
	<form action="login" method="post">
			<div style="margin:0 auto;max-width:300px">
			<h2>Sign In</h2>
			<div class="formRow">
				<div class="formLabel">Name:</div><input type="text" id="name" name="name"/>
			</div>
			<div class="formRow">
				<div class="formLabel">Password:</div><input type="password" id="password" name="password"/>
			</div>
			<div style="text-align:center;">
				<input type="submit" value="Sign In"/>
			</div>
			<div id="error" class="error">
				<%
					String msg = request.getParameter("errorMsg");
					if(msg != null)
						out.print(msg);
				%>
			</div>
			Don't have an account? <a href="CreateAccount.jsp">Create one.</a>
		</div>
	</form>
	
</div>

<%@ include file="Footer.jsp" %> 