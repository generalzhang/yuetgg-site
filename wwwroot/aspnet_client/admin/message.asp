<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('���ȵ�¼��');this.location.href='manage.asp';</script>")
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
		    response.Write "��ʱû�������Ϣ"
		  else
		    for i=1 to rs.recordcount
			if rs.eof or rs.bof then exit for
			user_name=rs("name")
			if rs("sex")="sir" then
			   sex="��"
			else
			  sex="Ů"
			end if
		  content=rs("content")
		  mail=rs("mail")
		  address=rs("address")
		  tel=rs("tel")
		%>
         <div class="msgcontainer">
        	<div class="msginfo">
            	<img src="../images/msgheader.gif" width="48" height="48" />
                ���ԣ�[<span style="color:#F00; font-weight:bold;"><%=user_name%></span>],
                �Ա�[<span style="font-weight:bold"><%=sex%></span>],
                ʱ�䣺[<span style="font-weight:bold"><%=rs("time")%></span>]
            </div>
            <div class="msgcontent">
            	<%=content%>
            </div>
            <div class="msgcontact">
            	Tel:<span style="font-weight:bold; font-size:14px;"><%=tel%></span>&nbsp;&nbsp;
                Mail:<span style="font-weight:bold;"><%=mail%></span>&nbsp;&nbsp;
                Address:<span style="font-weight:bold;"><%=address%></span>&nbsp;&nbsp;
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