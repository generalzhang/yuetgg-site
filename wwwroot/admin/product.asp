<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('���ȵ�¼��');this.location.href='manage.asp';</script>")
else
%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
<%
  dim rs,page,num,psize,total,aaa
   page=request("page")
   if page<>"" then
   page=cint(page)
   else
   page=1
   end if
   set rs=server.CreateObject("adodb.recordset")
   sql="select * from product order by id desc"
   rs.open sql,conn,1,1
   psize=4
   num=rs.recordcount
   t=num mod psize
   if num<psize then
   total=1
   elseif t=0 then
   total=num\psize
   else
   total=cint(num\psize)+1
   end if
%>
      <div id="layer222" style="text-align:left;">
      
	  
	  <%
        if rs.eof or rs.bof then
        response.Write("<p>��ǰ�޼�¼</p>")
		aaa=1
		else
        rs.move (page-1)*psize
	    for i=1 to psize
		if rs.eof then exit for
	  %>
         <div id="layer3221">
            <div id="layer32211">
            <strong><%=rs("title")%></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="product-delete.asp?id=<%=rs("id")%>">ɾ��</a>
            <a href="product-edite.asp?product_id=<%=rs("id")%>">�޸�</a>
            </div>
            <div id="layer32212">
               <div id="layer322121"><img src="<%=rs("main")%>" width="150px" height="150px;" /></div>
               <div id="layer322122"><%=rs("content")%></div>
            </div>
         </div>
         <%
		rs.movenext
		next
		end if
		rs.close
		set rs=nothing
		if aaa<>1 then
		%>
         <div id="layer3222">
            <%if page<2 then%>
		    ��ҳ&nbsp;&nbsp;��һҳ&nbsp;&nbsp;
		    <%else%>
		    <a href="product.asp?page=1">��ҳ</a>&nbsp;&nbsp;
            <a href="product.asp?page=<%=page-1%>">��һҳ</a>&nbsp;&nbsp;
	    	<%end if
		    total=cint(total)
		    if page<total then%>
            <a href="product.asp?page=<%=page+1%>">��һҳ</a>&nbsp;&nbsp;
            <a href="product.asp?page=<%=total%>">βҳ</a>
            <%else%>
		    ��һҳ&nbsp;&nbsp;βҳ
		    <%end if%>
            &nbsp;&nbsp;��<font color="#FF0000"><%=page%></font>ҳ&nbsp;&nbsp;��<font color="#FF0000"><%=total%></font>ҳ
         </div>
         <%
		   end if
		 %><br />
       <center><a href="product-add.asp"><strong style="font-size:16px; color:#F00;">���</strong></a></center>
   
   </div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>