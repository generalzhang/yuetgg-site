<!--#include file="conn.asp"-->
<%
dim rs,pic,pname,content
pic=request("pic")
fname=request.Form("pname")
content=request.Form("content")
set rs=server.CreateObject("adodb.recordset")
sql="select * from joinus"
rs.open sql,conn,1,3
rs.addnew
rs("fname")=fname
rs("main")=pic
rs("time")=now()
rs("content")=content
rs("author")=session("admin")
rs.update
rs.close
set rs=nothing
response.Write("<script language='javascript'>alert('Ìí¼Ó³É¹¦£¡');location.href='join-us.asp';</script>")
%>