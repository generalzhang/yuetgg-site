<!--#include file="conn.asp"-->
<%
dim rs,main,content,title
main=request.Form("pic")
content=request.Form("content")
title=trim(request.Form("title"))
set rs=server.CreateObject("adodb.recordset")
sql="select * from product"
rs.open sql,conn,1,3
rs.addnew
rs("main")=main
rs("content")=content
rs("title")=title
rs.update
rs.close
set rs=nothing
response.Write("<script language='javascript'>alert('Ìí¼Ó³É¹¦£¡');location.href='product.asp';</script>")
%>