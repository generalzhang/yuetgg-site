<!--#include file="conn.asp"-->
<%
dim rs,pic,pname
pic=request("pic")
pname=request.Form("pname")
set rs=server.CreateObject("adodb.recordset")
sql="select * from pmsource"
rs.open sql,conn,1,3
rs.addnew
rs("leibie")=1
rs("pname")=pname
rs("main")=pic
rs.update
rs.close
set rs=nothing
response.Write("<script language='javascript'>alert('Ìí¼Ó³É¹¦£¡');location.href='pmsource.asp';</script>")
%>