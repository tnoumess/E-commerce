<%
	/*
	*	Author: Trillane Burlar
	*
	*	Header include page for .jsp's
	*/
	
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html class="html">
 <head>

  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <meta name="generator" content="7.3.5.244"/>
  <title>RemoteEye</title>
  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="CSS/site_global.css"/>
  <link rel="stylesheet" type="text/css" href="CSS/master_a-master.css"/>
  <link rel="stylesheet" type="text/css" href="CSS/home.css" id="pagesheet"/>
  <link rel="stylesheet" type="text/css" href="CSS/style.css">
  
    <!-- jQuery Include -->
  	<script type="text/javascript">
	   if (document.location.protocol != 'https:') document.write('\x3Cscript src="http://musecdn.businesscatalyst.com/scripts/4.0/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
	</script>
 	<script type="text/javascript">
	   window.jQuery || document.write('\x3Cscript src="scripts/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
	</script>
	  
	<script src="SCRIPT/jquery-ui.js"></script>
	<script>

	$( document ).ready(function() {

	$("#u509_img").mouseover(function(){

		if(document.getElementById("good").value=="null")

			//alert()

			 $("#link").bind('click',false);

	

	});

});

	</script>

	
	
	<link rel="stylesheet" type="text/css" href="CSS/jquery-ui.css" />
	<link rel="stylesheet" type="text/css" href="CSS/getStarted.css" />
  <!--[if lt IE 9]>
  <link rel="stylesheet" type="text/css" href="css/iefonts_home.css"/>
  <![endif]-->
  <!-- Other scripts -->
  <script type="text/javascript">
   document.documentElement.className += ' js';
var __adobewebfontsappname__ = "muse";
</script>
  <!-- JS includes -->
  <script type="text/javascript">
   document.write('\x3Cscript src="' + (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//webfonts.creativecloud.com/comfortaa:n4,n7:all.js" type="text/javascript">\x3C/script>');
</script>
</head>

<body>

<div class="clearfix" id="page"><!-- column -->
   <div class="position_content" id="page_position_content">
     <div class="clearfix colelem" id="pu69"><!-- group -->
     <div class="clip_frame grpelem" id="u69"><!-- image -->
      <a href="Welcome.jsp"><img class="block" id="u69_img" src="images/INFS640.gif" alt="" width="248" height="104"/></a>
     </div>
      <% Object val=request.getSession().getAttribute("cart");%><input type="hidden" id="good" value="<% out.print(val);%>">
     <div class="clearfix grpelem" id="ppwidgetu450"><!-- column -->
      <div class="clearfix colelem" id="pwidgetu450"><!-- group -->
       
       <form class="form-grp clearfix grpelem" id="widgetu450" method="post" enctype="multipart/form-data" action=""><!-- none box -->
        
      <%
							Object userName = request.getSession().getAttribute("user");
							boolean showSignOut = false;
							if(userName == null){
								out.print("<div class='fld-grp clearfix grpelem' id='widgetu460' data-required='true'></div><a class=\"buttonRemoteEye NoWrap grpelem\" style=\"color:white;padding-left:5px;padding-right:5px;z-index: 61;min-height: 32px;width: 88px;margin-right: -10000px;text-align:center;line-height:32px;left: 252px;position:relative;\" href=\"Login.jsp\">Sign In</a>");
							}
							else {
								out.print("<div class='fld-grp clearfix grpelem' id='widgetu460' data-required='true'><!-- none box --><a class=\"buttonRemoteEye\"  style=\"color:white;padding:10px 15px;line-height:30px;\" href=\"UserFeed.jsp\">" + userName.toString()+"</a></div>");
								showSignOut = true;
							}
						%>
						
						<%
							if(showSignOut){
								out.print("<a class=\"buttonRemoteEye NoWrap grpelem\" style=\"color:white;padding-left:5px;padding-right:5px;z-index: 61;min-height: 32px;width: 88px;margin-right: -10000px;text-align:center;line-height:32px;left: 252px;position:relative;\"' href='logout'/>Sign Out</a>");
							}
						%>

      <!-- state-based BG images -->
      <!-- state-based BG images -->
     </form>    
     <div class="clip_frame grpelem" id="u509">

     	<!-- Shopping Cart -->
        <a href="listcart" id="link">
        	<img class="block" id="u509_img" src="images/cartimg.png" alt="shopping cart img" width="47" height="47"/>
	        <c:if test="${cartTotal>0}">
		      <span id="itemsInCart"><c:out value="${cartTotal}"/></span>
			</c:if>
		</a>
       </div>
      </div>
      <ul class="MenuBar clearfix colelem" id="menuu75"><!-- horizontal box -->
       <li class="MenuItemContainer clearfix grpelem" id="u90"><!-- vertical box -->
        <a class="nonblock nontext MenuItem MenuItemWithSubMenu clearfix colelem" id="u91" href="Welcome.jsp"><!-- horizontal box -->
        <div class="MenuItemLabel NoWrap clearfix grpelem" id="u94-4"><!-- content --><p>Welcome</p></div></a>
       </li>
       <li class="MenuItemContainer clearfix grpelem" id="u121"><!-- vertical box -->
        <a class="nonblock nontext MenuItem MenuItemWithSubMenu clearfix colelem" id="u122" href="GetStarted.jsp"><!-- horizontal box -->
        <div class="MenuItemLabel NoWrap clearfix grpelem" id="u125-4"><!-- content --><p>Get Started</p></div></a>
       </li>
       <li class="MenuItemContainer clearfix grpelem" id="u134"><!-- vertical box -->
        <a class="nonblock nontext MenuItem MenuItemWithSubMenu clearfix colelem" id="u137" href="product"><!-- horizontal box -->
        <div class="MenuItemLabel NoWrap clearfix grpelem" id="u139-4"><!-- content --><p>Products</p></div></a>
       </li>
       <li class="MenuItemContainer clearfix grpelem" id="u147"><!-- vertical box -->
        <a class="nonblock nontext MenuItem MenuItemWithSubMenu clearfix colelem" id="u150" href="Download.jsp"><!-- horizontal box -->
        <div class="MenuItemLabel NoWrap clearfix grpelem" id="u153-4"><!-- content --><p>Download</p></div></a>
       </li>
      </ul>
   </div>
  </div>
      
   
  
    
	<div class="preload_images">
   <img class="preload" src="images/u467-17-r.png" alt=""/>
   <img class="preload" src="images/u467-17-m.png" alt=""/>
   <img class="preload" src="images/u467-17-fs.png" alt=""/>
   <img class="preload" src="images/u485-17-r.png" alt=""/>
   <img class="preload" src="images/u485-17-m.png" alt=""/>
   <img class="preload" src="images/u485-17-fs.png" alt=""/>
  </div>
 

  <script src="SCRIPT/museutils.js" type="text/javascript"></script>
  <script src="SCRIPT/webpro.js" type="text/javascript"></script>
  <script src="SCRIPT/jquery.musemenu.js" type="text/javascript"></script>
  <script src="SCRIPT/jquery.watch.js" type="text/javascript"></script>
  
  <!-- Other scripts -->
  <script type="text/javascript">
   $(document).ready(function() { try {
Muse.Utils.transformMarkupToFixBrowserProblemsPreInit();/* body */
Muse.Utils.prepHyperlinks(true);/* body */
Muse.Utils.initWidget('#widgetu450', function(elem) { new WebPro.Widget.Form(elem, {validationEvent:'submit',errorStateSensitivity:'high',fieldWrapperClass:'fld-grp',formSubmittedClass:'frm-sub-st',formErrorClass:'frm-subm-err-st',formDeliveredClass:'frm-subm-ok-st',notEmptyClass:'non-empty-st',focusClass:'focus-st',invalidClass:'fld-err-st',requiredClass:'fld-err-st',ajaxSubmit:true}); });/* #widgetu450 */
Muse.Utils.initWidget('#widgetu468', function(elem) { new WebPro.Widget.Form(elem, {validationEvent:'submit',errorStateSensitivity:'high',fieldWrapperClass:'fld-grp',formSubmittedClass:'frm-sub-st',formErrorClass:'frm-subm-err-st',formDeliveredClass:'frm-subm-ok-st',notEmptyClass:'non-empty-st',focusClass:'focus-st',invalidClass:'fld-err-st',requiredClass:'fld-err-st',ajaxSubmit:true}); });/* #widgetu468 */
Muse.Utils.initWidget('.MenuBar', function(elem) { return $(elem).museMenu(); });/* unifiedNavBar */
Muse.Utils.fullPage('#page');/* 100% height page */
Muse.Utils.showWidgetsWhenReady();/* body */
Muse.Utils.transformMarkupToFixBrowserProblems();/* body */
} catch(e) { Muse.Assert.fail('Error calling selector function:' + e); }});
</script>

<!-- Highlights navigation for current page -->
<script type="text/javascript">
	$(function(){
		var url = window.location.href;
		$("#menuu75 a").each(function(){
			if(url==(this.href)){
				$(this).closest("li").addClass("active");
			}	
		})
	})

</script>
<div id="pageContent">
	
	