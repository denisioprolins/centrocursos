<!--#include file="pgi_cnx.asp"-->
<%
'FUNCIONALIDADE: converte palavras para o padrão UTF-8
Function Konvert(sIn)
	if(sIn<>"") then
		Dim oIn : Set oIn = CreateObject("ADODB.Stream")
		oIn.Open
		oIn.CharSet = "UTF-8" 
		oIn.WriteText sIn
		oIn.Position = 0
		oIn.CharSet = "ISO-8859-1"
		Konvert = oIn.ReadText
		oIn.Close
	end if
End Function
%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>Admin - Centro Cursos</title>
	<script src="js\jquery-ui-1.10.3\jquery-1.9.1.js"></script>
	<script src="js\funcoes.js"></script>
	
	<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>	
<body>
	<fieldset>
		<div align="left" ><font color="black" size="7" face="arial back">CENTRO</font></div>
		<div align="right">
			<% 
				Dim hora
				hora = hour(now())
				Dim saudacao
				
				if hora > 00 and hora < 12 then
						saudacao = "Bom dia, "
				else 
					if hora > 12 and hora < 18 then
						saudacao = "Boa tarde, "
					else
						if hora > 18 and hora < 24 then
						saudacao = "Boa noite, "
						end if 
					end if
				end if
				
				response.write(saudacao & session("user_name"))
			%> 
		</div>
		<div align="right"><%="Hoje, "&date()&" - "%><a href="index.asp"><img src="imagens/logout.png" style="width: 20px;" alt="Sair" title="Sair"></a></div>
	</fieldset>
<!--#include file="menu.asp"-->
