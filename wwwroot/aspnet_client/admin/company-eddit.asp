<!--#include file="conn.asp"-->
<html>
<head> 
<title>后台管理页面</title>
<link href="../css/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function test(str){
    var picz = document.getElementById('pic').innerHTML
    var tc = document.getElementById("content");
    var tclen = tc.value.length;
    tc.focus();
    if(typeof document.selection != "undefined")
    {
        document.selection.createRange().text = str;  
    }
    else
    {
        tc.value = tc.value.substr(0,tc.selectionStart)+str+tc.value.substring(tc.selectionStart,tclen);
    }
}
</script>
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
	  <script type="text/javascript">
function test(str){
    var picz = document.getElementById('pic').innerHTML
    var tc = document.getElementById("content");
    var tclen = tc.value.length;
    tc.focus();
    if(typeof document.selection != "undefined")
    {
        document.selection.createRange().text = str;  
    }
    else
    {
        tc.value = tc.value.substr(0,tc.selectionStart)+str+tc.value.substring(tc.selectionStart,tclen);
    }
}
</script>
<% 
 id=request("id")
 set rs=server.CreateObject("adodb.recordset")
   sql="select * from company where id="&id
   rs.open sql,conn,1,3
%>
 <div>
   <center>
     <form action="company-eddital.asp?id=<%=id%>" method="post" name="form1" >
       <table align="center" width="701" bordercolor="#82ADF4" border="1" cellspacing="0" cellpadding="0">
         <tr>
           <td height="61" colspan="2" align="center" style=" font-family:'华文行楷'; font-size:48px; color:#0F0;">公司介绍</td>
         </tr>
         <tr>
           <td height="31" colspan="2" align="center">类别：
           <%
		     if rs("leibie")=1 then
			 response.Write("公司简介")
			 elseif rs("leibie")=2 then
			 response.Write(" 公司分布")
			 else
			 response.Write("成长历程")
			 end if
		   %>            
		   </td>
         </tr>      
         <tr>
           <td width="117" align="right">内容:&nbsp;</td>
           <td width="578" >
           <input name="content" style="display:none" id="content" value="<% =rs("main") %>" />
             <IFRAME ID="eWebEditor1" SRC="../eWebEditor4.4/ewebeditor.htm?id=content" FRAMEBORDER="0" SCROLLING="no" WIDTH="639" HEIGHT="425"></IFRAME>             
             </td>
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
  conn.close
  set conn=nothing
%>
 <table align="center">
<tr>
<td align="center">
<a href="manage-company.asp">[返回]</a>
</td>
</tr>
</table> 
</div>
    </div>
  </div>
  <div id="layer3">
    <div id="layer31"><a href="../index.html">首页</a>&nbsp;&nbsp;&nbsp;<a href="#">隐私策略</a>&nbsp;&nbsp;<a href="#">知识产权声明</a>&nbsp;&nbsp;&nbsp;<a href="../contact.asp">联系我们</a></div>
    <div id="layer32">瓯福安电子有限公司&nbsp;&nbsp;&nbsp;&nbsp;版权所有&nbsp;&nbsp;&nbsp;&nbsp;渝ICP备：11006888号<br />
    Copyright @ 2007 - 2011 Ofan. All Rights Reserved</div>
  </div>
</div>
</center>
</body>
</html>