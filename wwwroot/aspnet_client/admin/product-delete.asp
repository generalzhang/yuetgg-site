<!--#include file="conn.asp"-->
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('请先登录！');this.location.href='"&request.ServerVariables("HTTP_REFERER")&"';</script>")
else
dim rs,id,pname
id=request("id")
if id="" then
response.Write("<script language='javascript'>alert('访问出错！');this.location.href='"&request.ServerVariables("HTTP_REFERER")&"';</script>")
else
set rs=server.CreateObject("adodb.recordset")
sql="select * from product where id="&id
rs.open sql,conn,1,3
pname=rs("main")
rs.delete
rs.update
rs.close
set rs=nothing
call delfiles()
response.write"<script language=javascript>alert('成功删除文件,将返回上一页!');"
response.write"location.href='product.asp'</script>"
end if
end if


sub delfiles()
if pname="" then exit sub
dim fso,ppname
set fso = createobject("scripting.filesystemobject")
ppname=server.mappath("./"&pname)
fso.deletefile ppname
set fso = nothing
end sub


Function Quote(csValue)
'***************************************
'* 给指定的字符串加上双引号
'***************************************

Quote=Chr(34)&csValue&Chr(34)
End Function
%>
