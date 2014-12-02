
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %>

<link href="CSS/mysheet.css" rel="stylesheet" type="text/css" />
 <% 
   Object sms=request.getSession().getAttribute("sms");
 if(sms!=null&&sms.equals("sms_er")){
    	  out.print("<span style='color:red'>Please Add items in your cart first</span>");  
    	  session.invalidate();
    	  
      } %>
<div id="tagline">We also sell compatible web enabled cameras</div>
	<div style="text-align:left;margin-left:60px;margin-bottom:20px;">
		Easy to hook up, easy to use. Choose a camera that meets your needs.
	</div>
 <c:out value="${request.getSession().getAttribute('cart')}"/>
<div>
   <c:forEach items="${products}" var="prod" begin="0" end="2"  varStatus="loop">
    	<div style="display:inline-block;width:250px;margin: 0px 15px 30px 15px;vertical-align:top;background-color:#8aa3a3;border-radius:5px;padding:10px;min-height:500px;width:285px">

    		<div style="margin-top:5px;margin-bottom:10px;font-size:18px;font-weight:bold;color:white;"><c:out value="${prod.name}"/></div>
    		<img height="250"   src="<c:out value="${prod.imageUrl}"/>"/>
    		<div style="text-align:right;margin-top:10px;">
    			$<c:out value="${prod.price}"/>
    			<form action="addtocart" method="post" id="addProduct${loop.index}"  style="display:inline-block;">	
     				<input type="hidden" name="productId" value="${prod.productId}">
     				<div class="buttonRemoteEye productAdd" onclick="document.getElementById('addProduct${loop.index}').submit();">Add to Cart </div>
     			</form>	
    		</div>
    		<div style="text-align:left;margin-top:5px;padding-top:5px;border-top:1px solid black;padding-left:5px;"><c:out value="${prod.description}"/></div>
    	</div>
    </c:forEach>
    <br>
             
</div>
<%@ include file="Footer.jsp" %> 

