<%
  Dim conn,db
  db="databases\ofan.mdb"
  set conn=server.CreateObject("adodb.connection")
  conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Server.MapPath(db)
  
  '���
  Function RegExpTest( strng)
Dim regEx, Match, Matches   '����������
Set regEx = New RegExp   '����������ʽ��
regEx.Pattern ="['';]"  '����ģʽ��
regEx.IgnoreCase = True   '�����Ƿ������ַ���Сд��
regEx.Global = True   '����ȫ�ֿ����ԡ�
Set Matches = regEx.Execute(strng)  'ִ��������
For Each Match in Matches  '����ƥ�伯�ϡ�
RetStr = RetStr & "Match found at position "
RetStr = RetStr & Match.FirstIndex & ". Match Value is '"
RetStr = RetStr & Match.Value & "'." & "<BR>"
Next
RegExpTest = RetStr
End Function
%>