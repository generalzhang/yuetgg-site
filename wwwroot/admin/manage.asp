<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
      
      <div id="layer222m">
         <div style="height:100px;"></div>
         <div style=" padding-left:280px; width:200px; font-size:14px;">
      <%
	     if session("admin")<>"admin" then
	  %>
		 <!--#include file="admin.asp"-->
      <% 
	     else
	  %>
         <font style="font-family:����; font-size:28px;">~��ӭ����~</font><a href="loginout.asp">ע��</a>
      <%
	     end if
	  %>
         </div>
      </div>
      
<!--#include file="admin-bottom.asp"-->
