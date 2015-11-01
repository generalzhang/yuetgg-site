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
function check() 
{
	var strFileName=document.form1.FileName.value;
	if (strFileName=="")
	{
    	alert("请选择要上传的文件");
		document.form1.FileName.focus();
    	return false;
  	}
}
</script>
      <div id="layer222">
      
          
      <center>
      <!--<table width="400" border="0" cellspacing="1" cellpadding="0" bgcolor="#3366FF">
        <form action="guke_up3.asp" method="post" name="form1" onSubmit="return check()" enctype="multipart/form-data">
        <tr bgcolor="#FFFFFF" align="center">
          <td>图片上传</td>
        </tr>
        <tr bgcolor="#FFFFFF" align="center">
          <td>
  <input name="FileName" type="FILE" class="tx1" size="23">
  <input type="submit" name="Submit" value="上传" style="border:1px double rgb(88,88,88);font:9pt">
          </td>
        </tr>
        </form>
      </table>-->
      
      <form method="post" action="pmadd-deal.asp" name="form1" onSubmit="return check()">
<table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr>
                  <td colspan="2" align="center"><strong><font size="+2">添加照片</font></strong></td>
                </tr>
                <tr>
                  <td width="18%" align="right" height="40">照片名称：</td>
                  <td width="82%" align="left">&nbsp;&nbsp;&nbsp;&nbsp;<input name="pname" type="text" size="50" /></td>
                </tr>
                <tr> 
                <td width="18%" align="right" height="40">保存路径：</td>
                <td width="82%"> 
          <table>
            <tr>
<td><input type="text" name="pic" size="22" readonly="true" /><font color="#FF0000">*请勿改动保存路径</font>&nbsp;&nbsp;</td>
<td><iframe style="top:2px" ID="UploadFiles" src="guke_up1.asp" frameborder=0 scrolling=no width="310" height="22" name="I1" marginwidth="1" marginheight="1"></iframe>
           </td>
          </tr>
            </table>
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
      </center>
       
       
       </div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>
