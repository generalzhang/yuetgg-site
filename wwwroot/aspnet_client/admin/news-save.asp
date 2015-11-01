<!--#include file="conn.asp"-->
<%
  dim rs,title,main,id,leibie
  title=request.Form("title")
  main=request.Form("content")
  leibie=request.Form("leibie")
  if leibie="公司新闻" then
  leibie=1
  elseif leibie="媒体新闻" then
  leibie=2
  elseif leibie="图片新闻" then
  leibie=3
  elseif leibie="特殊新闻" then
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
  response.Write("<script language='javascript'>alert('修改成功！');location.href='news.asp';</script>")
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
  response.Write("<script language='javascript'>alert('添加成功！');location.href='news.asp';</script>")
  end if
%>
