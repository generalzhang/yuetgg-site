<!--#include file="conn.asp"-->
<%
   company=request.Form("company")
   paddress=request.Form("paddress")
   caddress=request.Form("caddress")
   cname=request.Form("cname")
   number=request.Form("number")&" "
   fax=request.Form("fax")&" "
   email=request.Form("email")
   postcode=request.Form("postcode")
   

   cname1=request.Form("cname_1")
   number1=request.Form("number_1")
   set rs=server.CreateObject("adodb.recordset")
   sql="select * from con where place=1"
   rs.open sql,conn,1,3
   rs("company")=company
   rs("paddress")=paddress
   rs("caddress")=caddress
   rs("cname")=cname
   rs("number")=number
   rs("fax")=fax
   rs("email")=email
   rs("postcode")=postcode
   rs.update
   rs.close
   set rs=nothing
   set rs=server.CreateObject("adodb.recordset")
   sql_1="select * from con where place=2"
   rs.open sql_1,conn,1,3
   rs("company")=company
   rs("paddress")=paddress
   rs("caddress")=caddress
   rs("cname")=cname1
   rs("number")=number1
   rs("fax")=fax
   rs("email")=email
   rs("postcode")=postcode
   rs.update
   rs.close
   set rs=nothing
   response.Write("<script language='javascript'>alert('ÐÞ¸Ä³É¹¦£¡');this.location.href='"&request.ServerVariables("HTTP_REFERER")&"';</script>")
%>