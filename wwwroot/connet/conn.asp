<%
  Dim conn,db
  db="databases\ofan.mdb"
  set conn=server.CreateObject("adodb.connection")
  conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Server.MapPath(db)
  
  '检查
  Function RegExpTest( strng)
Dim regEx, Match, Matches   '建立变量。
Set regEx = New RegExp   '建立正则表达式。
regEx.Pattern ="['';]"  '设置模式。
regEx.IgnoreCase = True   '设置是否区分字符大小写。
regEx.Global = True   '设置全局可用性。
Set Matches = regEx.Execute(strng)  '执行搜索。
For Each Match in Matches  '遍历匹配集合。
RetStr = RetStr & "Match found at position "
RetStr = RetStr & Match.FirstIndex & ". Match Value is '"
RetStr = RetStr & Match.Value & "'." & "<BR>"
Next
RegExpTest = RetStr
End Function
%>