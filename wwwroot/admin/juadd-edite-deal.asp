<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="conn.asp"-->
<%
dim join_id
join_id=request("join_id")
dim rs,pic,pname,content
fname=request.Form("pname")
content=request.Form("content")
set rs=server.CreateObject("adodb.recordset")
sql="select * from joinus  where id="&join_id&""
rs.open sql,conn,1,3
rs("fname")=fname
rs("time")=now()
rs("content")=content
rs("author")=session("admin")
rs.update
rs.close
set rs=nothing

response.Write("<script >alert('change success!');location.href='join-us.asp';</script>")
%>