<%
Response.write ("Conectando  ... ... !!!")
connString = "PROVIDER=SQLOLEDB;DATA SOURCE=mssql01.inter.net.br;UID=nomedousuariodobanco;PWD=suasenha;DATABASE=nomedobancoaqui"
set objConn = Server.CreateObject("ADODB.Connection")
objConn.open = connString
'set resultado = objConn.Execute("SELECT * FROM CC_Usuario")
'response.write (resultado("USU_NOM"))
Response.Write ("Conectado!")
%>