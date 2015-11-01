<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('请先登录！');this.location.href='manage.asp';</script>")
else
%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
<%
  dim rs
  set rs=server.CreateObject("adodb.recordset")
  sql="select * from joinus order by id desc"
  rs.open sql,conn,1,1
%>
      <div id="layer222" style="text-align:left;">
        
  <%      
  if rs.eof or rs.bof then
  response.Write("暂时没有相关信息!")
  else
        do while not rs.eof
   %>
        
        <div style=" padding-left:30px; padding-right:30px;">
        <center>
        <strong style="font-size:18px;"><%=rs("fname")%>&nbsp;&nbsp;&nbsp;&nbsp;<a href="join-us-delete.asp?id=<%=rs("id")%>">删除</a></strong>
        <br /><p style=" font-size:12px; color:#552c55;">发布人：<%=rs("author")%>&nbsp;|&nbsp;发布时间:<%=rs("time")%></p></center>
		<pre><%=rs("content")%><pre><br /><br />
        
  </div><br /><br /><br />
        
        <%
		rs.movenext
		loop
  end if
  rs.close
  set rs=nothing
  %>
       <center><a href="join-us-add.asp"><strong style="font-size:16px; color:#F00;">添加</strong></a></center>
  
       
      </div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>