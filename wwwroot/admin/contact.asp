<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('���ȵ�¼��');this.location.href='manage.asp';</script>")
else
%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
  <%
  dim rs
  set rs=server.CreateObject("adodb.recordset")
  sql="select * from con where place=1"
  rs.open sql,conn,1,3
  %>
      <div id="layer222">
      <center>
        <form name="form1" method="post" action="contact-save.asp">
        <table width="589" border="1" cellspacing="0" cellpadding="0">
          <tr>
            <td width="160" height="10">&nbsp;</td>
            <td width="429">&nbsp;</td>
          </tr>
          <tr>
            <td height="30" colspan="2" align="center" style="font-size:18px; line-height:25px"><strong>��˾��ϵ��ʽ</strong></td>
          </tr>
          <tr>
            <td height="30" align="right">��˾���ƣ�</td>
            <td><input name="company" type="text" size="60" value="<%=rs("company")%>" /></td>
          </tr>
          <tr>
            <td height="30" align="right">��˾��ַ��</td>
            <td><input name="paddress" type="text" size="60" value="<%=rs("paddress")%>" /></td>
          </tr>
          <tr>
            <td height="27" align="right">ͨѶ��ַ��</td>
            <td><input name="caddress" type="text" size="60" value="<%=rs("caddress")%>" /></td>
          </tr>
          <tr>
            <td height="30" align="right">��ϵ�绰��</td>
            <td><input name="number" type="text" size="60" value="<%=rs("number")%>" /></td>
          </tr>
          <tr>
            <td height="30" align="right">���棺</td>
            <td><input name="fax" type="text" size="60" value="<%=rs("fax")%>" /></td>
          </tr>
          <tr>
            <td height="30" align="right">���䣺</td>
            <td><input name="email" type="text" size="60" value="<%=rs("email")%>" /></td>
          </tr>
          <tr>
            <td height="30" align="right">�ʱࣺ</td>
            <td><input name="postcode" type="text" size="60" value="<%=rs("postcode")%>" /></td>
          </tr>
          <tr>
          <td  align="right">��ϵ����Ϣ</td>
          <td  align="center"><a href="p_connect.asp" style="color:#00F">��ϵ�˹���</a></td>
          </tr>
        <%
		   rs.close
		   set rs=nothing
		%>
           <tr>
          <td colspan="2" align="center"><input type="submit" value="�� ��"></td>
          </tr>
         </table>
         </form>
        </center>
      </div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>