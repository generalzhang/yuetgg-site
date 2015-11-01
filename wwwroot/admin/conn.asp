<%
  Dim conn,db
  db="../databases/ofan.mdb"
  set conn=server.CreateObject("adodb.connection")
  conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Server.MapPath(db)
%>