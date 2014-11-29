
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %>

<link href="CSS/mysheet.css" rel="stylesheet" type="text/css" />
 <% 
   Object sms=request.getSession().getAttribute("sms");
 if(sms!=null&&sms.equals("sms_er")){
    	  out.print("<span style='color:red'>Please Add items in your cart first</span>");  
    	  session.invalidate();
    	  
      } %>
<div id="tagline">Buy A Camera to Get Started!</div>
 <c:out value="${request.getSession().getAttribute('cart')}"/>
<div>
   <c:forEach items="${products}" var="prod" begin="0" end="2"  varStatus="loop">
    	<div style="display:inline-block;width:250px;margin: 0px 15px 30px 15px;vertical-align:top;">

    		<div><c:out value="${prod.name}"/></div>
    		<img height="250"   src="<c:out value="${prod.imageUrl}"/>"/>
    		<div style="text-align:right;">
    			$<c:out value="${prod.price}"/>
    			<c:choose>
	    			<c:when test="${empty cart || cart.containsKey(prod.productId) == false}">
		    			<form action="addtocart" method="post" id="addProduct${loop.index}"  style="display:inline-block;">	
		     				<input type="hidden" name="productId" value="${prod.productId}">
		     				<div class="buttonRemoteEye productAdd" onclick="document.getElementById('addProduct${loop.index}').submit();">Add to Cart </div>
		     			</form>	
	     			</c:when>
	     			<c:otherwise>
		     			<form action="removefromcart" method="post" id="removeProduct${loop.index}" style="display:inline-block;">
			     			<input type="hidden"name=productId value="<c:out value="${prod.productId}"/>">
			     			<div class="buttonRemoteEyeRed productRemove" onclick="document.getElementById('removeProduct${loop.index}').submit();">Remove from Cart</div>
		     			</form>
					</c:otherwise>
				</c:choose>
    		</div>
    		<div><c:out value="${prod.description}"/></div>
    	</div>
    </c:forEach>
    <br>
             
</div>
<%@ include file="Footer.jsp" %> 

