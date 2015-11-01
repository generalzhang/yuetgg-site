<!--#include file="conn.asp"-->
<%
   dim rs,company,paddress,caddress,number,fax,email,postcode
   company=request.Form("company")
   paddress=request.Form("paddress")
   caddress=request.Form("caddress")
   number=request.Form("number")
   fax=request.Form("fax")
   email=request.Form("email")
   postcode=request.Form("postcode")
 
 
   set rs=server.CreateObject("adodb.recordset")
   sql="select * from con where place=1"
   rs.open sql,conn,1,3
   rs("company")=company
   rs("paddress")=paddress
   rs("caddress")=caddress
   rs("number")=number
   rs("fax")=fax
   rs("email")=email
   rs("postcode")=postcode
   rs.update
   rs.close

   set rs=nothing
   response.Write("<script language='javascript'>alert('ÐÞ¸Ä³É¹¦£¡');this.location.href='"&request.ServerVariables("HTTP_REFERER")&"';</script>")
%>