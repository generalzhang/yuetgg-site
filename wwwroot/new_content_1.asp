<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="重庆长实钢结构工程有限公司  长实钢结构工程有限公司  钢结构工程  钢结构厂房  钢结构  钢构 活动板房  建筑钢结构 工字钢 C型钢 长实钢结构有限责任公司 重钢 轻钢" />
<meta name="description" content="公司主要经营各种焊接结构高频接H型钢，C、Z、T型钢及各种彩钢夹心板（聚苯、岩棉、聚氨酯）、彩钢压型板，高强度铝镁锰合金型板，钢承板等
承接各种钢结构厂房、活动板房的设计、制作和安装，同时也兼营土建工程。
重庆市长实钢结构工程有限责任公司位于重庆市万州区爵士花园5号楼，公司现有员工100余人，其中工程技术人员30余人，国家一级注册结构师3人，国家注册建造师3人。

公司主要经营各种焊接结构高频接H型钢，C、Z、T型钢及各种彩钢夹心板（聚苯、岩棉、聚氨酯） 彩钢压型板，高强度铝镁锰合金型板，钢承板等。
价值观念：诚廉、创新、卓越、和谐
企业精神：团结、务实、高效、奋进
管理理念：严格、规范、高效、精细
质量理念：合作、友谊、双赢、发展
管理理念：一丝不苟、精益求精
安全理念：安全第一、科学防范

" />
<title>重庆长实钢结构工程有限责任公司</title>
<style>
p{
	text-indent:20pt;font-size:14px;
	text-height:20px;}
</style>
</head>
<body>  
<!--#include file="connet\conn.asp"-->
<%
    id=request("new_id")
   set rs=server.CreateObject("adodb.recordset")
   sql="select * from  new where id="&id&" "
   rs.open sql,conn,1,3
   if rs.recordcount=0 then
     response.Write "<div style='padding-left=20px; padding-top=20px;'>暂时没有相关信息</div>"
   else
     for i=0 to rs.recordcount
	   if rs.eof or rs.bof then exit for
	    
%>
 <div style="width:664px; height:25px; padding-bottom:5px; text-align:center; font-size:14px;"><b><%=rs("title")%></b></div>
<div style="width:664px; height:12px; padding-bottom:5px; text-align:center; font-size:12px; color:#960;">发布人：<%=rs("author")%>&nbsp;|&nbsp;发布时间:<%=rs("time")%></div>
<div style="width:640px; margin:auto; padding-left:10px; padding-right:10px; padding-top:20px; ">
  <%
   if rs("pic")<>"" then
     pic=rs("pic")
	   response.Write "<img src=../admin/"&pic&" width='600' height='400'>"
	 end if
  %>
 
<p>
  <%=rs("main")%>
  </p>
  </div>
<%
      rs.movenext
	next
  end if
  rs.close
  set rs=nothing
%>
<body>
</html>
