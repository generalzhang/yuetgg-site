<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta name="keywords" content="���쳤ʵ�ֽṹ�������޹�˾  ��ʵ�ֽṹ�������޹�˾  �ֽṹ����  �ֽṹ����  �ֽṹ  �ֹ� ��巿  �����ֽṹ ���ָ� C�͸� ��ʵ�ֽṹ�������ι�˾ �ظ� ���" />
<meta name="description" content="��˾��Ҫ��Ӫ���ֺ��ӽṹ��Ƶ��H�͸֣�C��Z��T�͸ּ����ֲʸּ��İ壨�۱������ޡ��۰��������ʸ�ѹ�Ͱ壬��ǿ����þ�̺Ͻ��Ͱ壬�ֳа��
�нӸ��ָֽṹ��������巿����ơ������Ͱ�װ��ͬʱҲ��Ӫ�������̡�
�����г�ʵ�ֽṹ�����������ι�˾λ����������������ʿ��԰5��¥����˾����Ա��100���ˣ����й��̼�����Ա30���ˣ�����һ��ע��ṹʦ3�ˣ�����ע�Ὠ��ʦ3�ˡ�

��˾��Ҫ��Ӫ���ֺ��ӽṹ��Ƶ��H�͸֣�C��Z��T�͸ּ����ֲʸּ��İ壨�۱������ޡ��۰����� �ʸ�ѹ�Ͱ壬��ǿ����þ�̺Ͻ��Ͱ壬�ֳа�ȡ�
��ֵ������������¡�׿Խ����г
��ҵ�����Žᡢ��ʵ����Ч���ܽ�
��������ϸ񡢹淶����Ч����ϸ
����������������ꡢ˫Ӯ����չ
�������һ˿������������
��ȫ�����ȫ��һ����ѧ����

" />
<title>���쳤ʵ�ֽṹ�����������ι�˾</title>
<link href="style/style1.css"  type="text/css" rel="stylesheet" />
<link href="style/style2.css"  type="text/css" rel="stylesheet" />
<script type="text/javascript" src="javascript/jquery-1.8.0.js"></script>
<script type="text/javascript" src="javascript/shanren.js"></script>
 <!--[if IE 6]>  <script> function correctPNG()  { for(var i=0; i<document.images.length; i++) { var img = document.images[i]; var imgName = img.src.toUpperCase(); if (imgName.substring(imgName.length-3, imgName.length) == "PNG") { var imgID = (img.id) ? "id='" + img.id + "' " : ""; var imgClass = (img.className) ? "class='" + img.className + "' " : ""; var imgTitle = (img.title) ? "title='" + img.title + "' " : "title='" + img.alt + "' "; var imgStyle = "display:inline-block;" + img.style.cssText; if (img.align == "left") imgStyle = "float:left;" + imgStyle; if (img.align == "right") imgStyle = "float:right;" + imgStyle; if (img.parentElement.href) imgStyle = "cursor:hand;" + imgStyle; var strNewHTML = "<span "+ imgID + imgClass + imgTitle + "style=\"" + "width:" + img.width + "px; height:" + img.height + "px;" + imgStyle + ";"  + "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader" + "(src='" + img.src + "', sizingMethod='scale');\"></span>"; img.outerHTML = strNewHTML; i = i-1; } } } window.attachEvent("onload", correctPNG); </script> <![endif]--> 
<SCRIPT LANGUAGE="JavaScript">
function check(id){
     var str=document.getElementById(id).value;
	 
     var reg=new RegExp("['\;]");
     if(reg.test(str)){
        alert("��ȷ�����ݲ����������ַ���");
        return false;}
}
 </SCRIPT>

<style>
a{
	color:#333;
	font-size: 14px;
}
</style>
</head>
<body >
<!--#include file="connet\conn.asp"-->
<%
  if request("action")="add" then
    user_name=request("c_name")
	sex=request("c_sex")
	tel=request("c_tel")
	mail=request("c_tel")
	address=request("c_tel")
	content=request("c_content")
	
    set rs=server.CreateObject("adodb.recordset")
	sql="select * from message"
	rs.open sql,conn,1,3
	rs.addnew
	rs("name")=user_name
	rs("sex")=sex
	rs("tel")=tel
	rs("mail")=mail
	rs("address")=address
	rs("content")=content
	rs("time")=date&" "&time
	rs.update
	rs.close
    %>
    <script>
	alert=confirm("���������ύ�ɹ������ǻᾡ�������");
    </script>
    <%
    response.Redirect("index.asp")
	
else
%>

<div id="bpic">
    <div id="bpic_list">  
    <a><img  src="images/home/bpics/pic1.jpg" /></a>
    <a><img   src="images/home/bpics/top_back3.png" /></a>
    <a><img   src="images/home/bpics/top_back4.png" /></a>
    </div>
    	<ul style="display:none">
        <li class="on">1</li>
        <li>2</li>
        <li>3</li>
    </ul>
   <img  id="img1" src="images/home/logo.png" /> 
  <img id="img2" src="images/home/top.png" />
	  <div id="navigation">
   <ul>
      <li style="clear:both"><a href="index.asp">��ҳ</a></li>
      <li><a href="company.asp">��˾���</a></li>
      <li><a href="news_1.asp">���¶�̬</a></li>
      <li><a href="project.asp">����ʵ��</a></li>
      <li><a href="recruit.asp">�˲���Ƹ</a></li>
      <li><a href="message.asp">�ͻ�����</a></li>
      <li><a href="contract.asp">��ϵ����</a></li>
    </ul>
  </div>
</div>
  

<div id="center">
     <div id="left">
          <div id="left1">
   <div id="left-top"><p>��ҵ�Ļ�</p></div>
            <p style=" text-align:left; padding-left:20px; padding-top:10px;"> 
               <%
   set rs=server.CreateObject("adodb.recordset")
   sql="select * from company where leibie=3"
   rs.open sql,conn,1,1
   if not rs.eof then
   content=rs("main")
   end if
   rs.close
   response.Write(content)
   %>
            </p>
          </div>
          <div id="left1">
             <div id="left-top"><p>��ϵ����</p></div>
              <p style=" text-align:left; padding-left:20px; padding-top:10px;">
             <ul>
			 <%
			  set rs=server.CreateObject("adodb.recordset")
				sql="select * from conn_person"
				rs.open sql,conn,1,2
				do while not rs.eof 
				p_name=rs("conn_name")
				p_phone=rs("conn_phone")
				%>
                <li class="list3"><%=p_name%>:<%=p_phone%></li>
                <%
				rs.movenext
				loop
				rs.close
				
				
				dim c_email
				sql="select * from con"
				rs.open sql,conn,1,2
				if not rs.eof then
				c_email=rs("email")
				end if
				rs.close
				%>
                <li class="list3">Email:<%=c_email%></li>
     
             </ul>
             </p>
           
          </div>
     </div>
     <div id="right">
         <div id="right-top">
            <div id="right-top-img"><img src="images/other/small-buttom.gif" /></div>   
            <h1>��ҳ&gt;&gt;����</h1>
         </div>
         <div id="right-bottom">
           <h1 id="title">�ͻ����� </h1>
           <br/>
           <TABLE =0 cellSpacing=0 cellPadding=0 width=530>
<form name="form1" method="post" action="message.asp?action=add">
<TBODY align="left">
<TR>
<TD height=20 width="20%">
<DIV align=right>�ǳ�: </DIV></TD>
<TD width="80%">&nbsp;<INPUT name="c_name" id="name"  onmouseout="check('name')">
<font color="#FF0000">*</font></TD></TR>
<TR>
<TD height=20>
<DIV align=right>�Ա�:</DIV></TD>
<TD>&nbsp;<INPUT value="sir" CHECKED type="radio" name="c_sex"> ��<INPUT value="lady" type="radio" name="c_sex"> Ů</TD></TR>
<TR>
<TD height=20>
<DIV align=right>�绰:</DIV></TD>
<TD>&nbsp;<INPUT size="30" id="tel" onmouseout="check('tel')" name="c_tel">
<font color="#FF0000">*</font></TD></TR>
<TR>
<TD height=20>
<DIV align=right>�ʼ�:</DIV></TD>
<TD>&nbsp;<INPUT size="30" id="mail" onmouseout="check('mail')"  name="c_email">
<font color="#FF0000">*</font></TD></TR>
<TR>
<TD height=25>
<DIV align=right>��ַ:</DIV></TD>
<TD>&nbsp;<INPUT size="60" name="c_address" id="ads" onmouseout="check('ads')"></TD></TR>
<TR>
<TD height=60 vAlign=top>
<DIV align=right>����:<BR></DIV></TD>
<TD>&nbsp;<TEXTAREA rows="5" cols="60" name="c_content" id="ct" onmouseout="check('ct')"></TEXTAREA></TD></TR>
<TR>
<TD height=30 colSpan=2>
<DIV align=center><INPUT value="�ύ" type="submit" name="submit1"> &nbsp; <INPUT value="��д" type="reset" name="submit2"> 
  <input type="hidden" name="hdflag" id="flag" value="1" />
</DIV></TD></TR></TBODY></form></TABLE>
         </div>
     </div>     
</div>
<div id="footer">
    <p> �������ӣ�<a href="http://www.shanrengg.com/" target="_blank">����ɽ�ʸֹ�</a>&nbsp;&nbsp;&nbsp;
    <a href="http://www.huirenlw.com/" target="_blank">������ʽ�������</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="http://www.cqfxny.com/" target="_blank">�������ũҵ</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="http://www.ccegc.cn/" target="_blank">���콨��</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="http://www.cqrb.com.cn" target="_blank">����·��</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br/>
	<a href="http://cqjsxx.com" target="_blank">������������</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="admin/manage.asp" id="a1">�������</a><br/>
   Copyright &copy; 2012-2050 ���쳤ʵ�ֽṹ�����������ι�˾ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <span id="spImg"><a href="javascript:;" target="blank"><img  src="./images/police.png" width="55" height="55" /><br/>��������</a></spa
    ></p>
</div>
<%
end if
%>
</body>
</html>