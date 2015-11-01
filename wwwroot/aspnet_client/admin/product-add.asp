<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('请先登录！');this.location.href='"&request.ServerVariables("HTTP_REFERER")&"';</script>")
else
%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
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

      <div id="layer222" style="text-align:left;">
       
       <form method="post" action="product-add-deal.asp" name="form1">
<table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr>
                  <td colspan="2" align="center"><strong><font size="+2">添加产品</font></strong></td>
                </tr>
                <tr>
                  <td width="18%" align="right" height="40">产品名称：</td>
                  <td width="82%"><input name="title" type="text" size="50" /></td>
                </tr>
                <tr> 
                <td width="18%" align="right" height="40">图片名称：</td>
                <td width="82%"> 
          <table>
            <tr>
<td><input type="text" name="pic" size="22" /><font color="#FF0000">*请勿改动图片名称</font>&nbsp;&nbsp;</td>
<td><iframe style="top:2px" ID="UploadFiles" src="guke_up1.asp" frameborder=0 scrolling=no width="310" height="22" name="I1" marginwidth="1" marginheight="1"></iframe>
           </td>
          </tr>
            </table>
                </td>
              </tr>
              <tr> 
                <td width=18% align=right valign=top>产品介绍：</td>
                <td width=82%>
	<textarea name="content" rows="5" cols="60" ></textarea>
             
               </td>
              </tr>
</table>
<table width=90% cellpadding=0 cellspacing=0 border=0 align=center>
<tr>
<td align="center" height="60">
<input name="submit" type="submit" value="提交" />
</td>
</tr>
<tr>
<td align="center">
<h4 id="www"></h4>
</td>
</tr>
</table>
</form>
       
       
       
       
       
       
       
       </div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>