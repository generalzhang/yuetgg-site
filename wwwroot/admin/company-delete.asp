<!--#include file="conn.asp"-->

<%  id=request("id")
 set re=server.CreateObject("adodb.recordset")
   sql="select * from company where id="&id
   re.open sql,conn,1,3
   re.delete
   re.update
   re.close
   set re=nothing
   conn.close
   set conn=nothing
   response.Write("<script language='javascript'>alert('ɾ���ɹ���');location.href='manage-company.asp';</script>")
%>
