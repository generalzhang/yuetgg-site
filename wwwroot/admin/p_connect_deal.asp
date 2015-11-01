
<head>
</head>

<body>
<!--#include file="conn.asp"-->
<% 
  dim rs
  set rs=server.CreateObject("adodb.recordset")
  dim op_type
  op_type=request("type")
  if  op_type="add" then
  dim p_name,p_phone
  p_name=request("p_name_new")
  p_phone=request("p_phone_new")
  sql="select * from conn_person"
  rs.open sql,conn,1,3
  rs.addnew
  rs("conn_name")=p_name
  rs("conn_phone")=p_phone
  rs.update
  rs.close
  s="<script language='javascript' >alert('添加成功');location.href='p_connect.asp'</script>"
  response.Write(s)
  elseif op_type="delete" then
  id=request("id")
  sql="select * from conn_person where id="&id&""
  rs.open sql,conn,1,3
   rs.delete
   rs.update
   rs.close
   s="<script>alert('删除成功');location.href='p_connect.asp'</script>"
  response.Write(s)
  end if
%>
</body>
</html>
