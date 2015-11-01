<!--#include file="conn.asp"-->

<%
   set rs=server.CreateObject("adodb.recordset")
   sql="select * from company"
   rs.open sql,conn,1,3
   rs.addnew
  rs("main")=request.Form("content")
  if request.Form("leibie")="公司简介" then
  rs("leibie")=1
  elseif request.Form("leibie")="公司分布" then
  rs("leibie")=2
  else rs("leibie")=3
  end if
   rs.update
   rs.close
   set rs=nothing
   conn.close
   set conn=nothing  
   response.Write("<script language='javascript'>alert('成功！');location.href='manage-company.asp';</script>")
%>