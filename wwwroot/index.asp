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
<script type="text/javascript" src="javascript/jquery-1.8.0.js"></script>
<script type="text/javascript" src="javascript/shanren.js"></script>
<script>
// JavaScript Document

var num = 0;

window.onload = function(){
	//alert(document.getElementsByClassName("lfnews").length);
	document.getElementById("gundong").onmouseover = stopit;
	document.getElementById("gundong").onmouseout = moveleft;
	moveleft();
	}
function moveleft(){
	document.getElementById("gundong").style.marginLeft = -num+"px"; 
	num = num+1;
	if(num<420){
	key = setTimeout("moveleft()",50);
		}else{
			num = 0;
			document.getElementById("gundong").style.marginLeft = -num+"px"; 
			moveleft();
			}
	}
function stopit(){
	clearTimeout(key);
	}
</script>
 <!--[if IE 6]>  <script> function correctPNG()  { for(var i=0; i<document.images.length; i++) { var img = document.images[i]; var imgName = img.src.toUpperCase(); if (imgName.substring(imgName.length-3, imgName.length) == "PNG") { var imgID = (img.id) ? "id='" + img.id + "' " : ""; var imgClass = (img.className) ? "class='" + img.className + "' " : ""; var imgTitle = (img.title) ? "title='" + img.title + "' " : "title='" + img.alt + "' "; var imgStyle = "display:inline-block;" + img.style.cssText; if (img.align == "left") imgStyle = "float:left;" + imgStyle; if (img.align == "right") imgStyle = "float:right;" + imgStyle; if (img.parentElement.href) imgStyle = "cursor:hand;" + imgStyle; var strNewHTML = "<span "+ imgID + imgClass + imgTitle + "style=\"" + "width:" + img.width + "px; height:" + img.height + "px;" + imgStyle + ";"  + "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader" + "(src='" + img.src + "', sizingMethod='scale');\"></span>"; img.outerHTML = strNewHTML; i = i-1; } } } window.attachEvent("onload", correctPNG); </script> <![endif]--> 

</head>
<body >
<!--#include file="connet\conn.asp"-->
<div id="bpic">
    <div id="bpic_list">  
    <a><img  src="images/home/bpics/pic1.jpg" /></a>
    <a><img  src="images/home/bpics/top_back3.png" /></a>
    <a><img  src="images/home/bpics/top_back4.png" /></a>
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
  
<div id="main">   
	<div id="left">
	   <div id="introduce">
	   		<h2>��˾���</h2>
	   		<p>
				<%
       set rs=server.CreateObject("adodb.recordset")
       sql="select * from company where leibie=1"
       rs.open sql,conn,1,1
       if not rs.eof then
       content=rs("main")
       end if
       rs.close
       response.Write(content)
       %>
      <a style="color:#06C;" href="company.asp">&gt;&gt;MORE</a></p>
   		</div>
   		<!--ͼƬչʾ-->
   		<div id="imgshow">
   			<h2>ͼƬչʾ</h2>
   			 <div class="img">
                <div id="gundong">
				    <%
					 sql="select  * from pmsource"
					 rs.open sql,conn,1,2
					 do while not  rs.eof 
					 path=rs("main")
					 %>
                     <a href="#"><img src="../admin/<%=path%>" ></a>
                     <%
					rs.movenext
					loop
					rs.close
				%>
                </div>
            </div>
   		</div>
	</div>
	<div id="right">
		<div id="news">
	    <h2>���¶�̬<a href="news_1.asp">&raquo;</a></h2>
	    <ul>
        
           <%
     set rs=server.CreateObject("adodb.recordset")
     sql="select top 4 * from  new order by id desc"
     rs.open sql,conn,1,3
     if rs.recordcount=0 then
       response.Write "<div style='padding-left=20px; padding-top=20px;'>��ʱû�������Ϣ</div>"
     else
       for i=0 to rs.recordcount
  		title=""
  	   if rs.eof or rs.bof then exit for
  	       '������������16
  		    title=rs("title")
  			if len(title) >16 then
  			title=left(title,16)&"..."
  			else
  			title=rs("title")
  			end if
  %>
   <li><a style="color:#000;" href="news_content.asp?new_id=<%=rs("id")%>"><%=title%></a></li>
<%
      rs.movenext
	next
  end if
  rs.close
  set rs=nothing
%>
	    </ul>
	    </div>
	    <div id="works">
	    <h2>��Ӫҵ��</h2>
	    <ul>
	    	<li>�ֽṹ������ƽ���</li>
	       	<li>���ָֽṹ�Ͳ���Ƽӹ�</li> 
            <li>��巿���������װ</li>
	        <li>�����Ȼ�����ʩ����</li>
	    </ul>
	    </div>
	    <div id="line">
	    <h2>��ϵ����<a href="contract.asp">&raquo;</a></h2>
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
	<span id="spImg"><a href="javascript:;" target="blank">
	<img  src="./images/police.png" width="55" height="55" /><br/>��������</a>
	</span>
    </p>
</div>
</body>
</html>
