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
  sql="select * from message order by id desc"
  rs.open sql,conn,1,1
%>
      <div id="layer222" style="text-align:left;">
        <div style=" clear:both;width:700px; margin-left:30px;">
		<%
		  if rs.recordcount=0 then
		    response.Write "暂时没有相关信息"
		  else
		    for i=1 to rs.recordcount
			if rs.eof or rs.bof then exit for
		%>
         <div class="msgcontainer">
        	<div class="msginfo">
            	<img src="../images/msgheader.gif" width="48" height="48" />
                来自：[<span style="color:#F00; font-weight:bold;"><%=(rs("name"))%></span>],
                性别：[<span style="font-weight:bold"><%=(rs("sex"))%></span>],
                时间：[<span style="font-weight:bold"><%=rs("time")%></span>]
            </div>
            <div class="msgcontent">
            	<%=(rs("content"))%>
            </div>
            <div class="msgcontact">
            	Tel:<span style="font-weight:bold; font-size:14px;"><%=(rs("tel")&"")%></span>&nbsp;&nbsp;
                Mail:<span style="font-weight:bold;"><%=(rs("mail"))%></span>&nbsp;&nbsp;
                Address:<span style="font-weight:bold;"><%=(rs("address"))%></span>&nbsp;&nbsp;
            </div>
        </div>
        <%
		  rs.movenext
		  next
		  end if
		  rs.close
		  set rs=nothing
		%>
        </div>
      </div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>