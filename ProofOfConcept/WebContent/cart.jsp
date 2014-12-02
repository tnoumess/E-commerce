<%@page import="java.util.HashMap"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Hashtable"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link href="CSS/mysheet.css" rel="stylesheet" type="text/css" />


<%! 
int total=0;
%>

<input type="hidden" id="good" value="<% out.print("");%>">
       
<div style="height: 500px; margin: 20px;">
	
	<div class="Table">
    <div class="Title">
        <p>My cart</p>
    </div>
    
    <div class="Heading">
        
        <div class="Cell">
            <p style="background-color:#9999CC">Brand</p>
        </div>
        <div class="Cell">
            <p style="background-color:#9999CC">Price</p>
        </div>
        <div class="Cell">
            <p style="background-color:#9999CC">Quantity</p>
        </div>
        
    </div>
    
    <c:forEach items="${mycart}" var="outer"> 
	    <div class="Row">
	        <div class="Cell">
	            <p><c:out value="${outer.key}"/></p>
	        </div>  
	    
	     
	        <div class="Cell">
	            <p style=" text-align:right"><c:out value="${outer.value}"/></p>
	        </div>  
	        
	        <div class="Cell"> 
	        	<input class="quantity" type="text" value="1" onClick="this.setSelectionRange(0, this.value.length)"/>
	        </div>
	        <div class="buttonRemoteEyeRed productRemove">Remove</div>
	        <% 
	   // total=total+ ${outer.value};
	     %>
	    </div>
     </c:forEach>
     
    <div class="Row">
    
        <div class="Cell">
            <p style="background-color:#C0C0C0">TOTAL</p>
        </div>
       
         
        <div class="Cell">
            <p style="background-color:#C0C0C0"><strong>$<c:out value="${total}"/> </strong></p>
        </div>     
       
          <div class="Cell">
            <p style="background-color:#C0C0C0"><strong>12345 </strong></p>
        </div> 
    
    </div>
    
</div>	<form action="checkout" method="post" id="checkoutForm">
     			<input type="hidden"name=productId value="<c:out value="y_free"/>">
     			<div class="buttonRemoteEye cartCheckout" onclick="document.getElementById('checkoutForm').submit();">Checkout! </div>
     			</form>
	
	</div>
	
		

      
	 <script>
	 	/*$(".buttonRemoteEyeRed").css('opacity', '0.0');
	 	$(".Row").on({
 			mouseenter: function(){
 					$(".buttonRemoteEyeRed", this).animate({opacity:1.0, duration:0})
			},
 			mouseleave: function(){
					$(".buttonRemoteEyeRed", this).animate({opacity:0.0, duration:500});//.css('visibility', 'hidden');
 			}
	 	});
	 	
	 	$(".buttonRemoteEyeRed").on({
 			mouseenter: function(){
 				$(this).animate({opacity:1.0, duration:1})
 			},
 			mouseleave: function(){
				$(this).animate({opacity:0.0, duration:1});
 			}
 	});*/
	 
	 </script>
     <%@ include file="Footer.jsp" %>  