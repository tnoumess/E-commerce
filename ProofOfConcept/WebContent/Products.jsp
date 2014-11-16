
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %>

<link href="CSS/mysheet.css" rel="stylesheet" type="text/css" />

    <c:forEach items="${products}" var="prod">
    	<div style="display:inline-block;width:220px;margin-right:5px;margin-left:5px;vertical-align:top;">
    		<div><c:out value="${prod.name}"/></div>
    		<img src="<c:out value="${prod.imageUrl}"/>"/>
    		<div style="text-align:right;">
    			$<c:out value="${prod.price}"/>
    			<form action="addtocart" method="post" id="C_Nokia" style="display:inline-block;">	
     				<input type="submit" value="Add to Cart"/>
				</form>	
    		</div>
    		<div><c:out value="${prod.description}"/></div>
    	</div>
    </c:forEach>
    
    <%@ include file="Footer.jsp" %> 

 


