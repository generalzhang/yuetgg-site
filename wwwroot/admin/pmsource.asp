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
  if request("page")<>"" then
  page=request("page")
  page=cint(page)
  else
  page=1
  end if
  set rs=server.CreateObject("adodb.recordset")
  sql="select * from pmsource order by id desc"
  rs.open sql,conn,1,1
  psize=9
  num=rs.recordcount
  t=num mod psize
  if num<9 then
  total=1
  elseif t=0 then
  total=num\psize
  else
  total=cint(num\psize)+1
  end if
  if not  rs.eof then
  rs.move (page-1)*9
  end if
%>
      <div id="layer222">
       <div id="layer392">
	   <%
	    for i=1 to psize
		if rs.eof then exit for
	  %>
        <div id="layer3921">
          <div id="layer39211"><a href="<%=rs("main")%>"><img src="<%=rs("main")%>" width="220px" height="160px" /></a></div>
          <div id="layer39212"><a href="<%=rs("main")%>"><%=rs("pname")%></a>&nbsp;&nbsp;<a href="pmsource-delete.asp?id=<%=rs("id")%>">ɾ��</a></div>
        </div><%
		rs.movenext
		next
		rs.close
		set rs=nothing%>
       </div>
       <div id="layer393">
	    <%if page<2 then%>
		��ҳ&nbsp;&nbsp;��һҳ&nbsp;&nbsp;
		<%else%>
		<a href="pmsource.asp?page=1">��ҳ</a>&nbsp;&nbsp;
        <a href="pmsource.asp?page=<%=page-1%>">��һҳ</a>&nbsp;&nbsp;
		<%end if
		total=cint(total)
		if page<total then%>
        <a href="pmsource.asp?page=<%=page+1%>">��һҳ</a>&nbsp;&nbsp;
        <a href="pmsource.asp?page=<%=total%>">βҳ</a>
        <%else%>
		��һҳ&nbsp;&nbsp;βҳ
		<%end if%>
        &nbsp;&nbsp;��<font color="#FF0000"><%=page%></font>ҳ&nbsp;&nbsp;��<font color="#FF0000"><%=total%></font>ҳ</div>
       <div><center><a href="pmsource-add.asp"><strong style="font-size:16px; color:#F00;">���</strong></a></center></div>
     </div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>