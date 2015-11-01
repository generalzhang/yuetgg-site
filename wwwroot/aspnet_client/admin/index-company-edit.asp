<!--#include file="conn.asp"-->
<% 
  if request("action")="edit" then
    call edit()
  else
%>
<html>
<head> 
<title>后台管理页面</title>
<link href="../css/admin.css" rel="stylesheet" type="text/css" />
</head>




<body>
<center>
<div id="layer">
  <div id="layer1"><img src="../images/admin_01.gif" width="1024" height="120" alt=""></div>
  <div id="layer2">
    <div id="layer21"><img src="../images/admin_02.gif" width="219" height="66" alt="" /><a href="manage-company.asp"><img src="../images/admin_12.jpg" width="219" height="50" alt="" /></a><a href="news.asp"><img src="../images/admin_13.gif" width="219" height="51" alt=""></a><a href="product.asp"><img src="../images/admin_14.gif" width="219" height="50" alt=""></a><a href="pmsource.asp"><img src="../images/admin_15.gif" width="219" height="51" alt="" /></a><a href="message.asp"><img src="../images/admin_16.gif" width="219" height="50" alt="" /></a><a href="contact.asp"><img src="../images/admin_112.jpg" width="219" height="50" alt="" /></a><a href="join-us.asp"><img src="../images/admin_17.gif" width="219" height="35" alt="" /></a></div>
    <div id="layer22">
      <div id="layer221"><a href="../introduce.asp"><img src="../images/admin_03.gif" width="140" height="35" alt=""></a><a href="../newsli.asp"><img src="../images/admin_04.gif" width="79" height="35" alt="" /></a><a href="../product.asp"><img src="../images/admin_05.gif" width="82" height="35" alt=""></a><a href="../pmsource.asp"><img src="../images/admin_06.gif" width="78" height="35" alt=""></a><a href="../message.asp"><img src="../images/admin_08.gif" width="81" height="34" alt=""></a><a href="../joinus.asp"><img src="../images/admin_09.gif" width="82" height="34" alt=""></a><a href="../contact.asp"><img src="../images/admin_10.gif" width="263" height="34" alt=""></a></div>
      <div id="layer222">
      
<% 
 id=request("id")
 set rs=server.CreateObject("adodb.recordset")
   sql="select * from company where leibie=4"
   rs.open sql,conn,1,3
%>
 <div>
   <center>
     <form action="index-company-edit.asp?action=edit" method="post" name="form1" >
       <table align="center" width="701" bordercolor="#82ADF4" border="1" cellspacing="0" cellpadding="0">
         <tr>
           <td height="61" colspan="2" align="center" style=" font-family:'华文行楷'; font-size:24px; color:#0F0;">公司介绍(首页显示)</td>
         </tr>
         <tr>
           <td height="213" align="right">内容:&nbsp;</td>
           <td align="center">&nbsp;
               <textarea name="content" cols="80" rows="15" id="content"><% =rs("main") %></textarea></td>
         </tr>
         <tr>
           <td height="28" colspan="2" align="center">
		     <input name="submit" type="submit" value="保存修改" />
&nbsp;&nbsp;</td>
         </tr>
       </table>
     </form>
   </center>
 </div>
 <%
  rs.close
  set rs=nothing
%>
 <table align="center">
<tr>
<td align="center">
<a href="manage-company.asp">[返回]</a>
</td>
</tr>
</table> 
</div>
<!--#include file="admin-bottom.asp"-->

<%
  end if
   
   
sub edit()
   dim rs
   set rs=server.CreateObject("ADODB.Recordset")
   sql="select * from company where leibie=4"
   rs.open sql,conn,1,3
   rs("main")=request.Form("content")
   rs.update
   rs.close
   set rs=nothing
   response.Write("<script language='javascript'>alert('恭喜你，修改成功！');location.href='manage-company.asp';</script>")  
end sub
%>