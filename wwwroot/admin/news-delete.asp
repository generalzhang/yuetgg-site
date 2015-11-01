<!--#include file="conn.asp"-->
<%
  dim rs
  id=request("id")
  set rs=server.CreateObject("adodb.recordset")
  sql="select * from new where id="&id
  rs.open sql,conn,1,3
  rs.delete
  rs.update
  rs.close
  set rs=nothing
  response.Write("<script language='javascript'>alert('É¾³ý³É¹¦£¡');this.location.href='"&request.ServerVariables("HTTP_REFERER")&"';</script>")
%>