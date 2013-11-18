<%

session.LCID = 1046
SET CX = SERVER.CREATEOBJECT("ADODB.CONNECTION")
SET rs = SERVER.CREATEOBJECT("ADODB.RECORDSET")
CX.provider = "SQLOLEDB.1"

'CX.ConnectionString = "Data Source=localhost;persist security info= false;initial catalog=BD_MAPRE;uid=teste;pwd=teste"
'CX.ConnectionString = "Data Source=187.45.196.22;persist security info= false;initial 'catalog=sistemasprolins213;uid=sistemasprolins213;pwd=pro123321***"
'CX.ConnectionString = "Data Source=10.207.1.81\PROLINSDB01;persist security info= false;initial catalog=TADEUCOSTA_SITE;uid=proususites;pwd=propwrsis***"

CX.ConnectionString = "Provider=SQLNCLI10; Data Source=localhost; persist security info= false;	initial catalog=centrocursos; uid=teste; pwd=dados"

CX.OPEN 

%>