<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
<style>
p{
	text-indent:20pt;font-size:14px;
	text-height:20px;}
</style>
</head>
<body>  
<!--#include file="connet\conn.asp"-->
<%
    id=request("new_id")
   set rs=server.CreateObject("adodb.recordset")
   sql="select * from  new where id="&id&" "
   rs.open sql,conn,1,3
   if rs.recordcount=0 then
     response.Write "<div style='padding-left=20px; padding-top=20px;'>��ʱû�������Ϣ</div>"
   else
     for i=0 to rs.recordcount
	   if rs.eof or rs.bof then exit for
	    
%>
 <div style="width:664px; height:25px; padding-bottom:5px; text-align:center; font-size:14px;"><b><%=rs("title")%></b></div>
<div style="width:664px; height:12px; padding-bottom:5px; text-align:center; font-size:12px; color:#960;">�����ˣ�<%=rs("author")%>&nbsp;|&nbsp;����ʱ��:<%=rs("time")%></div>
<div style="width:640px; margin:auto; padding-left:10px; padding-right:10px; padding-top:20px; ">
  <%
   if rs("pic")<>"" then
     pic=rs("pic")
	   response.Write "<img src=../admin/"&pic&" width='600' height='400'>"
	 end if
  %>
 
<p>
  <%=rs("main")%>
  </p>
  </div>
<%
      rs.movenext
	next
  end if
  rs.close
  set rs=nothing
%>
<body>
</html>
