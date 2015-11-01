<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="gb2312">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="gb2312" /> 
<meta content="all" name="robots" /> 
<title>后台管理页面</title>
<meta name="author" content="校当项目组" /> 
<meta name="Copyright" content="版权所有，保留一切版权" /> 
<link href="../css/admin.css" rel="stylesheet" type="text/css" />
<script LANGUAGE="JavaScript">
function check(id){
     var str=document.getElementById(id).value;
	 
     var reg=new RegExp("['\;]");
     if(reg.test(str)){
        alert("请确定内容不包括特殊字符！");
        return false;}
}
 </SCRIPT>
</head>
<body>
<div id="layer">
  <div id="layer1"><img src="../images/admin_01.gif" width="1024" height="120" alt=""></div>
  <div id="layer2">
    <div id="layer21">
    <img src="../images/admin_02.gif" width="219" height="66" alt="" />
    <a href="manage-company.asp"><img src="../images/admin_12.jpg" width="219" height="50" alt="" /></a>
    <a href="news.asp"><img src="../images/admin_13.gif" width="219" height="51" alt=""></a>
    <a href="product.asp"><img src="../images/admin_14.gif" width="219" height="50" alt=""></a>
    <a href="message.asp"><img src="../images/admin_16.gif" width="219" height="50" alt="" /></a>
    <a href="contact.asp"><img src="../images/admin_112.jpg" width="219" height="50" alt="" /></a>
    <a href="join-us.asp"><img src="../images/admin_17.gif" width="219" height="35" alt="" /></a>
    </div>
    <div id="layer22">
      <div id="layer221">
      <a href="../company.asp"><img src="../images/admin_03.gif" width="140" height="35" alt=""></a>
      <a href="../news_1.asp"><img src="../images/admin_04.gif" width="79" height="35" alt="" /></a>
      <a href="../project.asp"><img src="../images/admin_05.gif" width="82" height="35" alt=""></a>
      <a href="../message.asp"><img src="../images/admin_08.gif" width="81" height="34" alt=""></a>
      <a href="../recruit.asp"><img src="../images/admin_09.gif" width="82" height="34" alt=""></a>
      <a href="../contract.asp"><img src="../images/admin_10.gif" width="263" height="34" alt=""></a>
      </div>