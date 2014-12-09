
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="Header.jsp" %>

<link href="CSS/mysheet.css" rel="stylesheet" type="text/css" />

    
<form method="get" action="checkpayment" ENCTYPE="multipart/form-data">




<br>
<table width=518 border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr bgcolor="#E5E5E5">
    <td height="22" colspan="3" align="left" valign="middle"><strong>&nbsp;Billing Information (required)</strong></td>
  </tr>
  <tr>
    <td height="22" width="180" align="right" valign="middle">* First Name:</td>
    <td colspan="2" align="left"><input name="name" type="text" size="50" required></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">Last Name:</td>
    <td colspan="2" align="left"><input name="lastName" type="text" size="50"></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">Company (optional):</td>
    <td colspan="2" align="left"><input name="company" type="text" size="50"></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">* Street Address:</td>
    <td colspan="2" align="left"><input name="address1" type="text" value="" size="50" required></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">Street Address (2):</td>
    <td colspan="2" align="left"><input name="address2" type="text" value="" size="50"></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">* City:</td>
    <td colspan="2" align="left"><input name="city" type="text" value="" size="50" required></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">*State/Province:</td>
    <td colspan="2" align="left"><input name="state" type="text" value="" size="50" required></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">* Zip/Postal Code:</td>
    <td colspan="2" align="left"><input name="zip" type="text" value="" size="50" required></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">* Country:</td>
    <td colspan="2" align="left"><input name="country" type="text" value="" size="50" required></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">Phone:</td>
    <td colspan="2" align="left"><input name="phone" type="text" value="" size="50"></td>
  </tr>
  <tr>
    <td height="22" colspan="3" align="left" valign="middle">&nbsp;</td>
  </tr>
  <tr bgcolor="#E5E5E5">
    <td height="22" colspan="3" align="left" valign="middle"><strong>&nbsp;Credit Card (required)</strong></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">* Credit Card Number:</td>
    <td colspan="2" align="left"><input name="CCNo" type="text" value="" size="19" pattern=".{16}" title="enter 16 digits" maxlength="16" required></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">Expiry Date:</td>
    <td colspan="2" align="left">
      <SELECT NAME="CCExpiresMonth" required >
        <OPTION VALUE="" SELECTED>--Month--
        <OPTION VALUE="01">January (01)
        <OPTION VALUE="02">February (02)
        <OPTION VALUE="03">March (03)
        <OPTION VALUE="04">April (04)
        <OPTION VALUE="05">May (05)
        <OPTION VALUE="06">June (06)
        <OPTION VALUE="07">July (07)
        <OPTION VALUE="08">August (08)
        <OPTION VALUE="09">September (09)
        <OPTION VALUE="10">October (10)
        <OPTION VALUE="11">November (11)
        <OPTION VALUE="12">December (12)
      </SELECT> /
      <SELECT NAME="CCExpiresYear" required>
        <OPTION VALUE="" SELECTED >--Year--
        <OPTION VALUE="04">2014
        <OPTION VALUE="05">2015
        <OPTION VALUE="06">2016
        <OPTION VALUE="07">2017
        <OPTION VALUE="08">2018
        <OPTION VALUE="09">2019
        <OPTION VALUE="10">2020
        <OPTION VALUE="11">2021
        <OPTION VALUE="12">2022
        <OPTION VALUE="13">2023
        <OPTION VALUE="14">2024
        <OPTION VALUE="15">2025
      </SELECT>
    </td>
  </tr>
  <tr>
    <td height="22" colspan="3" align="left" valign="middle">&nbsp;</td>
  </tr>
  <tr bgcolor="#E5E5E5">
    <td height="22" colspan="3" align="left" valign="middle"><strong>&nbsp;Additional Information</strong></td>
  </tr>
  <tr>
    <td height="22" align="right" valign="middle">* Contact Email:</td>
    <td>
   <%
   
   Object User=request.getSession().getAttribute("user");
   if (User==null) {
	   
	   out.print("<td colspan='2' align='left'><input name='contactEmail' type='text'  size='50' required></td>");
   }else{
   out.print("<td colspan='2' align='left'><input name='contactEmail'  value="+User.toString()+" size='50' readonly></td>");
   }
   
   %>
   </td>
   </tr>
   
  <tr>
    <td height="22" colspan="3" align="left" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td height="22" align="right" valign="top">Special Notes:</td>
    <td colspan="2" align="left"><textarea name="notes" cols="45" rows="4"></textarea></td>
  </tr>
</table>
<p><input name="Submit" type="submit" value="Send Secure Form &gt;&gt;"></p>
</form>


<%@ include file="Footer.jsp" %> 


