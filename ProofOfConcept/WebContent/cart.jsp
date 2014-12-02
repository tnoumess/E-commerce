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
            <p style="background-color:#9999CC">Product</p>
        </div>
        <div class="Cell">
            <p style="background-color:#9999CC">Unit Price</p>
        </div>
        <div class="Cell">
            <p style="background-color:#9999CC">Quantity</p>
        </div>
        <div class="Cell">
            <p style="background-color:#9999CC">Unit Total</p>
        </div>
        
    </div>
    
    <c:forEach items="${mycartId}" var="outer"> 
<% 
//ArrayList al = new ArrayList();
%>
    
	    <div class="Row">
	        <div class="Cell">
	            <p><c:out value="${outer.key}"/></p>
	        </div>  
	        <c:forEach items="${outer.value}" var="outerId" begin="0" end="0"> 
	        <div class="Cell">
	            <p style=" text-align:right"><c:out value="${outerId}"/></p>
	        </div>  
	        </c:forEach> 
	        
	        <div class="Cell"> 
	            <c:forEach items="${outer.value}" var="outerId" begin="2" end="2"> 
	           	${outerId}
	            </c:forEach>
	                      	      
	        </div>
	       
	        <div class="Cell"> 
	            <c:forEach items="${outer.value}" var="outerId" begin="3" end="3"> 
	           	${outerId}
	            </c:forEach>
	                     	      
	        </div>  
	        <form action="removefromcart" method="post" > 
	        <c:forEach items="${outer.value}" var="outerId" begin="1" end="1"> 
	            <input  class="quantity" type="hidden" name="productId" value="${outerId}" size="15" readonly />
	            </c:forEach>	
	         <input class="buttonRemoteEyeRed productRemove" type="submit" value="Remove 1 unit">
	        </form>
	    </div>
	 
    </c:forEach> 
    
    <div class="Row">
    
        <div class="Cell">
            <p style="background-color:#C0C0C0">TOTAL</p>
        </div>
        <div class="Cell">
            <p style="background-color:#C0C0C0"></p>
        </div>
         <div class="Cell">
            <p style="background-color:#C0C0C0"></p>
        </div>
         
        <div class="Cell"> 
                 
            <p style="background-color:#C0C0C0"><strong>$<c:out value="${total}"/> </strong></p>
             
            
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
	        