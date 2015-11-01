<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta name="keywords" content="重庆长实钢结构工程有限公司  长实钢结构工程有限公司  钢结构工程  钢结构厂房  钢结构  钢构 活动板房  建筑钢结构 工字钢 C型钢 长实钢结构有限责任公司 重钢 轻钢" />
<meta name="description" content="公司主要经营各种焊接结构高频接H型钢，C、Z、T型钢及各种彩钢夹心板（聚苯、岩棉、聚氨酯）、彩钢压型板，高强度铝镁锰合金型板，钢承板等
承接各种钢结构厂房、活动板房的设计、制作和安装，同时也兼营土建工程。
重庆市长实钢结构工程有限责任公司位于重庆市万州区爵士花园5号楼，公司现有员工100余人，其中工程技术人员30余人，国家一级注册结构师3人，国家注册建造师3人。

公司主要经营各种焊接结构高频接H型钢，C、Z、T型钢及各种彩钢夹心板（聚苯、岩棉、聚氨酯） 彩钢压型板，高强度铝镁锰合金型板，钢承板等。
价值观念：诚廉、创新、卓越、和谐
企业精神：团结、务实、高效、奋进
管理理念：严格、规范、高效、精细
质量理念：合作、友谊、双赢、发展
管理理念：一丝不苟、精益求精
安全理念：安全第一、科学防范

" />
<title>重庆长实钢结构工程有限责任公司</title>
<link href="style/style1.css"  type="text/css" rel="stylesheet" />
<link  href="style/style2.css"  type="text/css" rel="stylesheet" />
<script type="text/javascript" src="javascript/jquery-1.8.0.js"></script>
<script type="text/javascript" src="javascript/shanren.js"></script>
 <!--[if IE 6]>  <script> function correctPNG()  { for(var i=0; i<document.images.length; i++) { var img = document.images[i]; var imgName = img.src.toUpperCase(); if (imgName.substring(imgName.length-3, imgName.length) == "PNG") { var imgID = (img.id) ? "id='" + img.id + "' " : ""; var imgClass = (img.className) ? "class='" + img.className + "' " : ""; var imgTitle = (img.title) ? "title='" + img.title + "' " : "title='" + img.alt + "' "; var imgStyle = "display:inline-block;" + img.style.cssText; if (img.align == "left") imgStyle = "float:left;" + imgStyle; if (img.align == "right") imgStyle = "float:right;" + imgStyle; if (img.parentElement.href) imgStyle = "cursor:hand;" + imgStyle; var strNewHTML = "<span "+ imgID + imgClass + imgTitle + "style=\"" + "width:" + img.width + "px; height:" + img.height + "px;" + imgStyle + ";"  + "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader" + "(src='" + img.src + "', sizingMethod='scale');\"></span>"; img.outerHTML = strNewHTML; i = i-1; } } } window.attachEvent("onload", correctPNG); </script> <![endif]--> 

</head>
<body >
<!--#include file="connet\conn.asp"-->
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
      <li style="clear:both"><a href="index.asp">首页</a></li>
      <li><a href="company.asp">公司简介</a></li>
      <li><a href="news_1.asp">最新动态</a></li>
      <li><a href="project.asp">工程实例</a></li>
      <li><a href="recruit.asp">人才招聘</a></li>
      <li><a href="message.asp">客户留言</a></li>
      <li><a href="contract.asp">联系我们</a></li>
    </ul>
  </div>
</div>
  
<div id="center">
  <div id="left">
          <div id="left1">
             <div id="left-top"><p>企业文化</p></div>
            <p style=" text-align:left; padding-left:20px; padding-top:10px;"> 
               <%
   set rs=server.CreateObject("adodb.recordset")
   sql="select * from company where leibie=3"
   rs.open sql,conn,1,1
   if not rs.eof then
   content=rs("main")
   end if
   rs.close
   %>
   <%=content%>

            </p>
          </div>
          <div id="left1">
             <div id="left-top"><p>联系我们</p></div>
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
            <h1>首页&gt;&gt;公司简介</h1>
         </div>
         <div id="right-bottom">
         <h1 id="title">公司简介</h1>
         <p> 
      <%
   set rs=server.CreateObject("adodb.recordset")
   sql="select * from company where leibie=2"
   rs.open sql,conn,1,1
   if not rs.eof then
   content=rs("main")
   end if
   rs.close
   %>   
      <div align="left">   
    <%=content%>
    </div>
   </p>
          
         </div>
     </div>     
</div>
<div id="footer">
    <p> 友情链接：<a href="http://www.shanrengg.com/" target="_blank">重庆山仁钢构</a>&nbsp;&nbsp;&nbsp;
    <a href="http://www.huirenlw.com/" target="_blank">重庆惠仁建筑劳务</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="http://www.cqfxny.com/" target="_blank">重庆凤轩农业</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="http://www.ccegc.cn/" target="_blank">重庆建工</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="http://www.cqrb.com.cn" target="_blank">重庆路桥</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br/>
	<a href="http://cqjsxx.com" target="_blank">重庆市政建筑</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="admin/manage.asp" id="a1">管理入口</a><br/>
    Copyright &copy; 2012-2050 重庆长实钢结构工程有限责任公司 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <span id="spImg"><a href="javascript:;" target="blank"><img  src="./images/police.png" width="55" height="55" /><br/>工商网监</a></spa
    ></p>
</div>
</body>
</html>
