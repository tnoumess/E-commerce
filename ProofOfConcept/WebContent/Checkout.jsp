
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %>

<link href="CSS/mysheet.css" rel="stylesheet" type="text/css" />
<div style="height: 500px; margin: 20px;">
 <form action="addtocart" method="post" id="C_Nokia">	
	
	<div class="Table">
    <div class="Title">
        <p>Camera</p>
    </div>
    <div class="Heading">
        <div class="Cell">
            <p>Pictures</p>
        </div>
        <div class="Cell">
            <p>Brand</p>
        </div>
        <div class="Cell">
            <p>Price</p>
        </div>
        <div class="Cell">
            <p>Quantity</p>
        </div>
        <div class="Cell">
            <p>Action</p>
        </div>
    </div>
    <div class="Row">
        <div class="Cell">
            <p><img alt="Nokia" src="images/Nokia.jpg"></p>
        </div>
        <div class="Cell">
            <p>Nokia</p>
        </div>
        <div class="Cell">
            <p>$100</p>
        </div>
       
         <div class="Cell">
                <input type="hidden" name="itemId" value="C_Nokia"> 
            <p><select name="quantity" id="qte">
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
          </select></p>
         </div>
          <div class="Cell">
            <p><input type="submit" value="Add to Cart"/></p>
          </div>
        
    </div>
    <div class="Row">
        <div class="Cell">
            <p>Row 2 Column 1</p>
        </div>
        <div class="Cell">
            <p>Row 2 Column 2</p>
        </div>
        <div class="Cell">
            <p>Row 2 Column 3</p>
        </div>
        <div class="Cell">
            <p>Row 2 Column 4</p>
        </div>
        <div class="Cell">
            <p>Row 2 Column 5</p>
        </div>
    </div>
</div>
	
	</form>
	</div>

<%@ include file="Footer.jsp" %> 


