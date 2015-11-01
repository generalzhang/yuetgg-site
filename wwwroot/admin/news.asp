<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('ÇëÏÈµÇÂ¼£¡');this.location.href='manage.asp';</script>")
else
%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
<%
  dim rs
  set rs=server.CreateObject("adodb.recordset")
  sql="select * from new order by id desc"
  rs.open sql,conn,1,1
%>
      <div id="layer222" style="text-align:left;">
       <%
	     do while not rs.eof
	   %>&nbsp;¡Ñ&nbsp;<a href="../NewsDetail.asp?news_id=<%=rs("id")%>"><%=rs("title")%></a><font color="#666666" size="-6"><%=rs("time")%></font>&nbsp;&nbsp;&nbsp;<a href="news-delete.asp?id=<%=rs("id")%>">É¾³ı</a>&nbsp;&nbsp;&nbsp;<a href="news-edit.asp?id=<%=rs("id")%>">ĞŞ¸Ä</a><br />
      <%
        rs.movenext
        loop
        rs.close
        set rs=nothing
        conn.close
        set conn=nothing 
       %><br />
       <center><a href="news-edit.asp"><strong style="font-size:16px; color:#F00;">Ìí¼Ó</strong></a></center></div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>