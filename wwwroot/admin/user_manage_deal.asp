<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>������ʽ����������޹�˾</title>
<meta name="description" content="������ʽ����������޹�˾����,����,�ֽṹ����,����,ľ��,��������,�ֽ,���ӹ�,Ĩ�ҹ�,�����๤,��������,���Ṥ,ˮ��ů��,�ܳа�,�����ܳа�,רҵ�а�,�����,��ҵ�ְ�,���⹤��" /> 
<meta name="keyword" content="������ʽ����������޹�˾����,����,�ֽṹ����,����,ľ��,��������,�ֽ,���ӹ�,Ĩ�ҹ�,�����๤,��������,���Ṥ,ˮ��ů��,�ܳа�,�����ܳа�,רҵ�а�,�����,��ҵ�ְ�,���⹤��"/> 
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
  s="<script language='javascript' >alert('��ӳɹ�');location.href='user_manage.asp'</script>"
  response.Write(s)
  elseif op_type="delete" then
  id=request("id")
  sql="select * from users where id="&id&""
  rs.open sql,conn,1,3
   rs.delete
   rs.update
   rs.close
   s="<script>alert('ɾ���ɹ�');location.href='user_manage.asp'</script>"
  response.Write(s)
  end if
%>
</body>
</html>
