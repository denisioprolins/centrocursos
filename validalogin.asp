<%
	usuario = request.form("usuario")
	senha = request.form("pwd")

	if usuario <>"" and senha <>"" then
		response.write "Usuario: "&usuario&"<br> Senha: "&senha

	end if
%>