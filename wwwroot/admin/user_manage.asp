
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('请先登录！');this.location.href='manage.asp';</script>")
else
%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
<div align="center">
 <h3>用户信息管理</h3>
 <%
  dim rs
  set  rs=server.CreateObject("adodb.recordset")
  sql="select * from users"
  rs.open sql,conn,1,2
 %>
  <table border="0px" bgcolor="#0000FF" width="600">
  <thead bgcolor="#FFFFFF">
   <th>编 号</th>
   <th>用户名</th>
   <th>密 码</th>
   <th>删 除</th>
  </thead>
  <%
  dim user_count
  dim user_name,user_pwd
  user_count=rs.recordcount
  i=1
  do while not rs.eof
  dim id,p_name,p_phone
  id=rs("id")
  user_name=rs("username")
  user_pwd=rs("pwd")
  %>
  <tr bgcolor="#FFFFFF">
   <td><%=i%></td>
   <td><%=user_name%></td>
   <td><%=user_pwd%></td>
   <td><a href="user_manage_deal.asp?type=delete&id=<%=id%>">删 除</a></td>
  </tr>
  <%
     i=i+1
     rs.movenext
	 loop
  %>
  <tr bgcolor="#FFFFFF">
   <form action="user_manage_deal.asp?type=add" method="post">
   <td>0</td>
   <td><input type="text" name="user_name_new"></td>
   <td><input type="password" name="user_pwd_new"></td>
   <td><input type="submit" value="添 加"></td>
   </form>
  </tr>
  </table>
</div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>