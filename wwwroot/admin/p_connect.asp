
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('���ȵ�¼��');this.location.href='manage.asp';</script>")
else
%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
<div align="center">
 <h3>��ϵ����Ϣ����</h3>
 <%
  dim rs
  set  rs=server.CreateObject("adodb.recordset")
  sql="select * from conn_person"
  rs.open sql,conn,1,2
 %>
  <table border="0px" bgcolor="#0000FF" width="600">
  <thead bgcolor="#FFFFFF">
   <th>���</th>
   <th>�û���</th>
   <th>�绰</th>
   <th>ɾ��</th>
  </thead>
  <%
  dim p_count
  p_count=rs.recordcount
  i=1
  do while not rs.eof
  dim id,p_name,p_phone
  id=rs("ID")
  p_name=rs("conn_name")
  p_phone=rs("conn_phone")
  %>
  <tr bgcolor="#FFFFFF">
   <td><%=i%></td>
   <td><%=p_name%></td>
   <td><%=p_phone%></td>
   <td><a href="p_connect_deal.asp?type=delete&id=<%=id%>">ɾ ��</a></td>
  </tr>
  <%
     i=i+1
     rs.movenext
	 loop
  %>
  <tr bgcolor="#FFFFFF">
   <form action="p_connect_deal.asp?type=add" method="post">
   <td>0</td>
   <td><input type="text" name="p_name_new"></td>
   <td><input type="text" name="p_phone_new"></td>
   <td><input type="submit" value="�� ��"></td>
   </form>
  </tr>
  </table>
</div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>