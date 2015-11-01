<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('访问出错！');this.location.href='../index.asp';</script>")
else
session("admin")=empty
session("user")=empty
response.Write("<script language='javascript'>alert('注销成功！');this.location.href='../index.asp';</script>")
end if
%>