<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('请先登录！');this.location.href='manage.asp';</script>")
else
%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
      <div id="layer222">
	  <%
	dim num,rs
	num=0
	set rs=server.CreateObject("adodb.recordset")
    sql="select * from company"
 %>
<div><center>
<table><tr><td  height="61" colspan="2" align="center" style=" font-family:'华文行楷'; font-size:24px; color:#0F0;">
公司介绍</td></tr></table>
</center></div> 
<%
    rs.open sql,conn,1,3
	do while not rs.eof
    num=num+1
%>
<%
    if rs("leibie")=1 then
     t="公司简介（首页显示)"
	elseif rs("leibie")=2 then
	 t="公司简介"
    end if
%>
 <div><center>
  <table align="center" width="700" bordercolor="#82ADF4" border="1" cellspacing="0" cellpadding="0">

    <tr>
      <td align="center">类别：
        <% =t %>  &nbsp;&nbsp;</td>
    </tr>
    
    
    <tr>
      <td id="www" height="100" align="left">
	  <%if rs("leibie")<>4 then%>
	  <% =rs("main") %>
      <%else%>
      <% =rs("main") %>
      <%end if%>
	 &nbsp;</td>
      </tr>   
    <tr>
      <td height="33" align="center">
      <%
	    if rs("leibie")=4 then
	  %>
      <a href="index-company-edit.asp?id=<%=rs("id")%>">修改</a>
      <%else%>
      <a href="company-eddit.asp?id=<% =rs("id") %>">修改</a>
      <%end if%>
      </td>
    </tr>
  </table>
</center>
</div>
</br>
<%
	    rs.movenext
	    loop
	    rs.close
	    set rs=nothing
	    conn.close
	    set conn=nothing
%>
<table align="center">
<tr>
<td align="center">
<a href="company-add.asp">[添加]</a>
<a href="manage.asp">[返回]</a>
</td>
</tr>
</table> 
</div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>
