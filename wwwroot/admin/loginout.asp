<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('���ʳ���');this.location.href='../index.asp';</script>")
else
session("admin")=empty
session("user")=empty
response.Write("<script language='javascript'>alert('ע���ɹ���');this.location.href='../index.asp';</script>")
end if
%>