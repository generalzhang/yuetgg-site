<!--#include file="conn.asp"-->

<% 
   dim rs,id
   id=request("id")
   set rs=server.CreateObject("adodb.recordset")
   sql="select * from company where id="&id
   rs.open sql,conn,1,3
   rs("main")=request.Form("content")
   rs.update
   rs.close
   set rs=nothing 
   response.Write("<script language='javascript'>alert('¹§Ï²Äã£¬ÐÞ¸Ä³É¹¦£¡');location.href='manage-company.asp';</script>")
   
%>
