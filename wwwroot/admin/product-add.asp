<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('请先登录！');this.location.href='"&request.ServerVariables("HTTP_REFERER")&"';</script>")
else
Dim htmlData

htmlData = Request.Form("content")

Function htmlspecialchars(str)
	str = Replace(str, "&", "&amp;")
	str = Replace(str, "<", "&lt;")
	str = Replace(str, ">", "&gt;")
	str = Replace(str, """", "&quot;")
	htmlspecialchars = str
End Function
%>
%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
<link rel="stylesheet" href="../editor/themes/default/default.css" />
<link rel="stylesheet" href="../editor/plugins/code/prettify.css" />
	<script charset="utf-8" src="../editor/kindeditor.js"></script>
	<script charset="utf-8" src="../editor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="../editor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content"]', {
				cssPath : '../editor/plugins/code/prettify.css',
				uploadJson : '../editor/asp/upload_json.asp',
				fileManagerJson : '../editor/asp/file_manager_json.asp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=form1]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=form1]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
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
      <%
	  dim product_id
	  dim product_name,product_pic,product_intr
	  product_id=request("product_id")
	  if product_id <>"" then
	  set rs=server.CreateObject("adodb.recordset")
	  sql="select * from product where id="&product_id&""
	  rs.open sql,conn,1,2
	  product_name=rs("title")
	  product_pic=rs("main")
	  product_intr=rs("content")
	  rs.close
	  set rs=nothing
	  else
	  product_name=""
	  product_pic=""
	  product_intr=""
	  end if
	  %>
       
       <form method="post" action="product-add-deal.asp" name="form1">
<table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr>
                  <td colspan="2" align="center"><strong><font size="+2">工程管理</font></strong></td>
                </tr>
                <tr>
                  <td width="18%" align="right" height="40">项目名称：</td>
                  <td width="82%"><input name="title" type="text" size="50" value="<%=product_name%>" /></td>
                </tr>
                <tr> 
                <td width="18%" align="right" height="40">图片名称：</td>
                <td width="82%"> 
          <table>
            <tr>
<td><input type="text" name="pic" size="22" value="<%=product_pic%>" /><font color="#FF0000">*请勿改动图片名称</font>&nbsp;&nbsp;</td>
<td><iframe style="top:2px" ID="UploadFiles" src="guke_up1.asp" frameborder=0 scrolling=no width="310" height="22" name="I1" marginwidth="1" marginheight="1"></iframe>
           </td>
          </tr>
            </table>
                </td>
              </tr>
              <tr> 
                <td width=18% align=right valign=top>产品介绍：</td>
                <td width=82%>
	<textarea id="content" name="content" style="width:577px;height:500px;"  >
		<%=htmlspecialchars(htmlData)%>
        <%=product_intr%>
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
       
       
       
       
       
       
       
       </div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>