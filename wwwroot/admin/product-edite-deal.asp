<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="conn.asp"-->
<%
dim product_id
dim rs,main,content,title
product_id=request("product_id")
main=request.Form("pic")
content=request.Form("content")
title=trim(request.Form("title"))
set rs=server.CreateObject("adodb.recordset")
sql="select * from product where id="&product_id&""
rs.open sql,conn,1,3
rs("main")=main
rs("content")=content
rs("title")=title
rs.update
rs.close
set rs=nothing
response.Write("<script >alert('change success!');location.href='product.asp';</script>")
%>