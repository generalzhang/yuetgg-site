<!--#include file="conn.asp"-->
<%
  dim rs,title,main,id,leibie
  title=request.Form("title")
  main=request.Form("content")
  leibie=request.Form("leibie")
  if leibie="��˾����" then
  leibie=1
  elseif leibie="ý������" then
  leibie=2
  elseif leibie="ͼƬ����" then
  leibie=3
  elseif leibie="��������" then
  leibie=4
  end if
  if request("id")<>"" then
  id=request("id")
  set rs=server.CreateObject("adodb.recordset")
  sql="select * from new where id="&id
  rs.open sql,conn,1,3
  rs("title")=title
  rs("main")=main
  rs("author")=session("users")
  rs("leibie")=leibie
  rs.update
  rs.close
  set rs=nothing
  response.Write("<script language='javascript'>alert('�޸ĳɹ���');location.href='news.asp';</script>")
  else
  set rs=server.CreateObject("adodb.recordset")
  sql="select * from new"
  rs.open sql,conn,1,3
  rs.addnew
  rs("title")=title
  rs("main")=main
  rs("time")=now()
  rs("author")=session("users")
  rs("leibie")=leibie
  rs.update
  rs.close
  set rs=nothing
  response.Write("<script language='javascript'>alert('��ӳɹ���');location.href='news.asp';</script>")
  end if
%>
