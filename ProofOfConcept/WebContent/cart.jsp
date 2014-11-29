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
<div>my cart</div>
<div>  <c:forEach items="${mycart}" var="outer"> 
        <c:out value="${outer.value}"/>
        </c:forEach>
 </div>



       
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
        
    </div>
    
    <c:forEach items="${mycart}" var="outer"> 
    <div class="Row">
        <div class="Cell">
            <p><c:out value="${outer.key}"/></p>
        </div>  
    
     
        <div class="Cell">
            <p style=" text-align:right"><c:out value="${outer.value}"/></p>
        </div>  
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
       
    
    </div>
    
</div>	<form action="checkout" method="post" id="checkoutForm">
     			<input type="hidden"name=productId value="<c:out value="y_free"/>">
     			<div class="buttonRemoteEye cartCheckout" onclick="document.getElementById('checkoutForm').submit();">Checkout! </div>
     			</form>
	
	</div>
	
		

      
	 
     <%@ include file="Footer.jsp" %>  