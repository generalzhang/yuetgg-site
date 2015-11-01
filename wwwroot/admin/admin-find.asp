<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="conn.asp" -->
<% 
    dim u,p
	u=request.Form("username")
	p=request.Form("pwd")
	set rs=server.CreateObject("adodb.recordset")
	sql="select * from users where username='"&u&"' and pwd='"&p&"'"
	rs.open sql,conn,1,1
	if not rs.eof then
	session("admin")="admin"
	session("users")=u
    response.Redirect("manage.asp")
	else
     response.Write("<script language='javascript'>alert('用户名或密码错误！');location='manage.asp'</script>")
	end if
	rs.close
	set rs=nothing
	conn.close
	set conn=nothing
%>