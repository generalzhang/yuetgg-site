<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta name="keywords" content="��ʵ�ֽṹ���޹�˾;�ظ�;���;�ֽṹ����;�ֽṹ����;�ֽṹ;�ֹ�;��巿;�����ֽṹ;���ָ�;C�͸�" />
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
<script type="text/javascript" src="javascript/jquery-1.8.0.js"></script>
<script type="text/javascript" src="javascript/shanren.js"></script>
 <!--[if IE 6]>  <script> function correctPNG()  { for(var i=0; i<document.images.length; i++) { var img = document.images[i]; var imgName = img.src.toUpperCase(); if (imgName.substring(imgName.length-3, imgName.length) == "PNG") { var imgID = (img.id) ? "id='" + img.id + "' " : ""; var imgClass = (img.className) ? "class='" + img.className + "' " : ""; var imgTitle = (img.title) ? "title='" + img.title + "' " : "title='" + img.alt + "' "; var imgStyle = "display:inline-block;" + img.style.cssText; if (img.align == "left") imgStyle = "float:left;" + imgStyle; if (img.align == "right") imgStyle = "float:right;" + imgStyle; if (img.parentElement.href) imgStyle = "cursor:hand;" + imgStyle; var strNewHTML = "<span "+ imgID + imgClass + imgTitle + "style=\"" + "width:" + img.width + "px; height:" + img.height + "px;" + imgStyle + ";"  + "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader" + "(src='" + img.src + "', sizingMethod='scale');\"></span>"; img.outerHTML = strNewHTML; i = i-1; } } } window.attachEvent("onload", correctPNG); </script> <![endif]--> 

</head>
<body >
<!--#include file="connet\conn.asp"-->
<div id="bpic">
    <div id="bpic_list">  
    <a><img src="images/home/bpics/pic1.jpg" /></a>
    <a><img src="images/home/bpics/top_back3.png" /></a>
    <a><img src="images/home/bpics/top_back4.png" /></a>
    </div>
    	<ul>
        <li class="on">1</li>
        <li>2</li>
        <li>3</li>
    </ul>
  </div>
   <img id="img1" src="images/home/logo.jpg" />
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
  
  
<div id="content">
   <div id="business"><%
   set rs=server.CreateObject("adodb.recordset")
   sql="select * from company where leibie=1"
   rs.open sql,conn,1,1
   if not rs.eof then
   content=rs("main")
   end if
   rs.close
   response.Write(content)
   %>
   </div>
   <div id="project">
        <ul>
          <li><a href="#"><img src="images/home/bpics/project1.jpg" /></a></li>
          <li><a href="#"><img src="images/home/bpics/project2.jpg" /></a></li>
          <li><a href="#"><img src="images/home/bpics/project3.jpg" /></a></li>
        </ul>
   </div>
   <div id="introduce">
   <%
   sql="select * from company where leibie=2"
   rs.open sql,conn,1,1
   if not rs.eof then
   content=left(rs("main"),180)
   end if
   rs.close
   response.Write(content&"<a style='color:#F00' href='company.asp'>>>����</a></p>")
   %>
  </div>
</div>
<div id="buttom">
<div id="demo">
  <div id="indemo">
    <div id="demo1">
         <a href="#"><img src="images/home/bpics/spic1.jpg" border="0" /></a>
         <a href="#"><img src="images/home/bpics/spic2.jpg" border="0" /></a>
         <a href="#"><img src="images/home/bpics/spic3.jpg" border="0" /></a>
         <a href="#"><img src="images/home/bpics/spic4.jpg" border="0" /></a>
         <a href="#"><img src="images/home/bpics/spic5.jpg" border="0" /></a>
         <a href="#"><img src="images/home/bpics/spic6.jpg" border="0" /></a>
    </div>
    <div id="demo2"></div>
  </div>
</div>
</div>
<script>
<!--
var speed=10;
var tab=document.getElementById("demo");
var tab1=document.getElementById("demo1");
var tab2=document.getElementById("demo2");
tab2.innerHTML=tab1.innerHTML;
function Marquee(){
if(tab2.offsetWidth-tab.scrollLeft<=0)
tab.scrollLeft-=tab1.offsetWidth
else{
tab.scrollLeft++;
}
}
var MyMar=setInterval(Marquee,speed);
tab.onmouseover=function() {clearInterval(MyMar)};
tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
-->
</script>

<div id="footer">
    <p>Copyright &copy; 2012-2050 ���쳤ʵ�ֽṹ�������ι�˾ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin
/manage.asp" id="a1">�������</a></p>
</div>
</body>
</html>
