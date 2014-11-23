
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %>

<link href="CSS/mysheet.css" rel="stylesheet" type="text/css" />
 <% 
   Object sms=request.getSession().getAttribute("sms");
 if(sms!=null&&sms.equals("sms_er")){
    	  out.print("<span style='color:red'>Please Add items in your cart first</span>");  
    	  session.invalidate();
    	  
      } %>
<div>
   
    <c:forEach items="${products}" var="prod" begin="0" end="2">
    	<div style="display:inline-block;width:250px;margin-right:15px;margin-left:15px;vertical-align:top;">
    		<div><c:out value="${prod.name}"/></div>
    		<img height="250"   src="<c:out value="${prod.imageUrl}"/>"/>
    		<div style="text-align:right;">
    			$<c:out value="${prod.price}"/>
    			<form action="addtocart" method="post" id="C_Nokia" style="display:inline-block;">	
     				<input type="hidden" name="productId" value="${prod.productId}">
     				<input type="submit" value="Add to Cart"/>
     			</form>	
     			<form action="removefromcart" method="post">
     			<input type="hidden"name=productId value="<c:out value="${prod.productId}"/>">
     			<input type="submit" value="remove to Cart"/>
     			</form>
				
    		</div>
    		<div><c:out value="${prod.description}"/></div>
    	</div>
    </c:forEach>
    <br>
             
</div>
<%@ include file="Footer.jsp" %> 

