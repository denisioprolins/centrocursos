<!--#include file="cabecalho.asp"-->
<%
	Pnome = Request.QueryString("primeiro")
	Response.cookies("fristname")=Pnome

%>
	<form method="get" action="Formulario.asp">
	<br>
		Primeiro Nome: <input type="text" name="primeiro" /><br>
		<br>
		<input type="submit" value="Enviar" />
		<br>
		<hr>
	</form>

	<%		
		if Pnome <> "" and Pnome = "Denisio" then
			Response.Write "Olá "& Pnome &"<br> Seja Bem vindo!<br><br>"
		end if	

		fname = request.cookies("fristname") 
		response.write fname
	%>	
<!--#include file="rodape.asp"-->