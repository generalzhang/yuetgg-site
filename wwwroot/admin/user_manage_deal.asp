<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>重庆惠仁建筑劳务有限公司</title>
<meta name="description" content="重庆惠仁建筑劳务有限公司建筑,劳务,钢结构厂房,劳务,木工,基础土建,钢筋工,架子工,抹灰工,砌筑泥工,混凝土工,油漆工,水电暖工,总承包,建筑总承包,专业承包,大清包,企业分包,特殊工种" /> 
<meta name="keyword" content="重庆惠仁建筑劳务有限公司建筑,劳务,钢结构厂房,劳务,木工,基础土建,钢筋工,架子工,抹灰工,砌筑泥工,混凝土工,油漆工,水电暖工,总承包,建筑总承包,专业承包,大清包,企业分包,特殊工种"/> 
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/logochange.js" type="text/javascript"></script>
</head>

<body>
<!--#include file="conn.asp"-->
<% 
  dim rs
  set rs=server.CreateObject("adodb.recordset")
  dim op_type
  op_type=request("type")
  if  op_type="add" then
  dim user_name,user_pwd
  user_name=request("user_name_new")
  user_pwd=request("user_pwd_new")
  sql="select * from users"
  rs.open sql,conn,1,3
  rs.addnew
  rs("username")=user_name
  rs("pwd")=user_pwd
  response.Write(p_name&" "&p_phone)
  rs.update
  rs.close
  s="<script language='javascript' >alert('添加成功');location.href='user_manage.asp'</script>"
  response.Write(s)
  elseif op_type="delete" then
  id=request("id")
  sql="select * from users where id="&id&""
  rs.open sql,conn,1,3
   rs.delete
   rs.update
   rs.close
   s="<script>alert('删除成功');location.href='user_manage.asp'</script>"
  response.Write(s)
  end if
%>
</body>
</html>
