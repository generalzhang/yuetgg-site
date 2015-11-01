<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
if session("admin")<>"admin" then
response.Write("<script language='javascript'>alert('请先登录！');this.location.href='manage.asp';</script>")
else
%>
<!--#include file="conn.asp"-->
<!--#include file="admin-head.asp"-->
<%
 dim n_date
 if request("n_date")="" then
 n_date=date()
 else
 n_date=request("n_date")
 end if
 dim rs_1,rs_2,rs_3,rs_4
 dim day_count,month_count,year_count,all_count
 set rs_1=server.CreateObject("adodb.recordset")
 set rs_2=server.CreateObject("adodb.recordset")
 set rs_3=server.CreateObject("adodb.recordset")
 set rs_4=server.CreateObject("adodb.recordset")
 
 
   sub get_vi_count(n_time)
   n_time=formatDate(n_time,1)
   dim n_day,n_month,n_year
   if month(n_time)<10 then
      t_month="0"&month(n_time)
	  else
	  t_month=month(n_time)
	end if
	if day(n_time)<10 then
	  t_day="0"&day(n_time)
	 else
	  t_day=day(n_time)
	 end if
   n_day=year(n_time)&"-"&t_month&"-"&t_day
   n_month=year(n_time)&"-"&t_month
   n_year=year(n_time)
   
   sql_day="select count(*) as num from visit_count where vi_time like '%"&n_day&"%' "
   sql_month="select count(*) as num from  visit_count where vi_time like '%"&n_month&"%'"
   sql_year="select count(*) as num from visit_count where vi_time like '%"&n_year&"%'"
   sql_all="select count(*) as num from visit_count"
   
   rs_1.open sql_day,conn,1,2
   rs_2.open sql_month,conn,1,2   
   rs_3.open sql_year,conn,1,2
   rs_4.open sql_all,conn,1,2
   
    day_count=rs_1("num")
  	month_count=rs_2("num")
	year_count=rs_3("num")
	all_count=rs_4("num")
	
   rs_1.close
   rs_2.close
   rs_3.close
   rs_4.close
 end sub
 
 Function formatDate(Byval t,Byval ftype) 
dim y, m, d, h, mi, s 
formatDate="" 
If IsDate(t)=False Then Exit Function 
y=cstr(year(t)) 
m=cstr(month(t)) 
If len(m)=1 Then m="0" & m 
d=cstr(day(t)) 
If len(d)=1 Then d="0" & d 
h = cstr(hour(t)) 
If len(h)=1 Then h="0" & h 
mi = cstr(minute(t)) 
If len(mi)=1 Then mi="0" & mi 
s = cstr(second(t)) 
If len(s)=1 Then s="0" & s 
select case cint(ftype) 
case 1 
' yyyy-mm-dd 
formatDate=y & "-" & m & "-" & d 
case 2 
' yy-mm-dd 
formatDate=right(y,2) & "-" & m & "-" & d 
case 3 
' mm-dd 
formatDate=m & "-" & d 
case 4 
' yyyy-mm-dd hh:mm:ss 
formatDate=y & "-" & m & "-" & d & " " & h & ":" & mi & ":" & s 
case 5 
' hh:mm:ss 
formatDate=h & ":" & mi & ":" & s 
case 6
' yyyymmdd 
formatDate=y & m & d 
case 7 
'yyyymmddhhmmss 
formatDate=y & m & d & h & mi & s 
end select 
End Function 
%>
 <div style="text-align:center; width:600px; height:auto; font-size:14px">
 <form action="vi_count.asp">

 <table >
  <tr ><td colspan="2" style="line-height:30px"><h2>访问统计</h2></td></tr>
  <tr  >
   <td>查询时间</td>
   <td><input type="text" name="n_date"/>（*日期格式:2013-2-12）</td>
  </tr>
  <tr  >
   <td>查询时间：</td>
   <td><%=n_date%></td>
  </tr>
   <%
   get_vi_count(n_date)
   %>
  <tr  >
     <td>日访问：</td>
    <td><%=day_count%>次</td>
  </tr>
  <tr >
     <td>月访问</td>
    <td><%=month_count%>次</td>
  </tr>
  <tr >
     <td>年访问</td>
    <td><%=year_count%>次</td>
  </tr>
  <tr>
	<td>累计访问</td>
	<td><%=all_count%>次</td>
  </tr>
  <tr><td colspan="2"><input type="submit" value="查 询">  <a href="vi_count.asp">今日统计</a></td></tr>
 </table>
 </form>
 </div>
<!--#include file="admin-bottom.asp"-->
<%
end if
%>
