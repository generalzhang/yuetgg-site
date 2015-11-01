<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('请先登录！');this.location.href='manage.asp';</script>")
else
%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
  <%
  dim rs
  set rs=server.CreateObject("adodb.recordset")
  set rs_1=server.CreateObject("adodb.recordset")
  sql="select * from con where place=1"
  sql_1="select * from con where place=2"
  rs.open sql,conn,1,3
    rs_1.open sql_1,conn,1,3
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
            <td height="48" colspan="2" align="center" style="font-size:18px;"><strong>重庆瓯福安联系方式</strong></td>
          </tr>
          <tr>
            <td height="30" align="right">公司名称：</td>
            <td><input name="company" type="text" size="60" value="<%=rs("company")%>" /></td>
          </tr>
          <tr>
            <td height="27" align="right">通讯地址：</td>
            <td><input name="caddress" type="text" size="60" value="<%=rs("caddress")%>" /></td>
          </tr>
          <tr>
            <td height="30" align="right">联系人1：</td>
            <td><input name="cname" type="text" size="60" value="<%=rs("cname")%>" /></td>
          </tr>
          <tr>
            <td height="30" align="right">联系电话：</td>
            <td><input name="number" type="text" size="60" value="<%=rs("number")%>" /></td>
          </tr>
               <tr>
            <td height="30" align="right">联系人2：</td>
            <td><input name="cname_1" type="text" size="60" value="<%=rs_1("cname")%>" /></td>
          </tr>
          <tr>
            <td height="30" align="right">联系电话：</td>
            <td><input name="number_1" type="text" size="60" value="<%=rs_1("number")%>" /></td>
          </tr>
          <tr>
            <td height="30" align="right">传真：</td>
            <td><input name="fax" type="text" size="60" value="<%=rs_1("fax")%>" /></td>
          </tr>
          <tr>
            <td height="30" align="right">邮箱：</td>
            <td><input name="email" type="text" size="60" value="<%=rs("email")%>" /></td>
          </tr>
          <tr>
            <td height="30" align="right">邮编：</td>
            <td><input name="postcode" type="text" size="60" value="<%=rs("postcode")%>" /></td>
          </tr>
          <tr>
            <td height="30" colspan="2" align="center">
            <input  type="submit" style="font-size: 9pt" value=" 确定 " />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input  type="reset" style="font-size: 9pt" value=" 重置 " /></td>
          </tr>
        </table>
        <%
		   rs.close
		   rs_1.close
		   set rs=nothing
		%>
        </form>
        </center>
      </div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>