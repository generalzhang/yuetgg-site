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
	var strFileName=document.form1.pic.value;
	var pname=document.form1.pname.value;
	if (strFileName=="")
	{
    	alert("请选择要上传的文件");
		document.form1.pic.focus();
    	return false;
  	}
	if (pname=="")
	{
    	alert("请填写文件名!");
		document.form1.pname.focus();
    	return false;
  	}
}
</script>
  <%
   dim join_id
   dim  join_title,join_content
   if request("join_id") <>"" then
   join_id=request("join_id")
   sql="select * from joinus where id="&join_id&""
   set rs=server.CreateObject("adodb.recordset")
   rs.open sql,conn,1,2
   join_title=rs("fname")
   join_content=rs("content")
   rs.close
   set rs=nothing
   end if
  %>

      <div id="layer222" style="text-align:left;">
     
      <center>
      <!--<table width="400" border="0" cellspacing="1" cellpadding="0" bgcolor="#3366FF">
       <form action="guke_up4.asp" method="post" name="form1" onSubmit="return check()" enctype="multipart/form-data">
        <tr bgcolor="#FFFFFF" align="center">
          <td>招聘信息文件上传</td>
        </tr>
        <tr bgcolor="#FFFFFF" align="center">
          <td>
  <input name="FileName" type="FILE" class="tx1" size="23" >
  <input type="submit" name="Submit" value="上传" style="border:1px double rgb(88,88,88);font:9pt">
          </td>
        </tr>
        </form>
      </table>
      -->
      <form method="post" action="juadd-edite-deal.asp?join_id=<%=join_id%>" name="form1" onSubmit="return check()">
<table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr>
                  <td colspan="2" align="center" style="line-height:30px"><strong><font size="+2">添加招聘信息</font></strong></td>
                </tr>
                <tr>
                  <td width="18%" align="right" height="40">招聘标题：</td>
                  <td width="82%" align="left">&nbsp;&nbsp;&nbsp;&nbsp;<input name="pname" type="text" size="50" value="<%=join_title%>" /></td>
                </tr>
              <tr> 
                <td width=18% align=right valign=top>详细招聘信息：</td>
                <td width=82%>
      <textarea id="content" name="content" style="width:578px;height:500px;">
       <%=join_content%>
      </textarea>
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