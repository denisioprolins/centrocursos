<!--#include file="includes/pgi_cnx.asp"-->
<%	
	sql = "select * from CC_Usuario"
	set rs = cx.execute(sql)

	usuario = request.form("usuario")
	senha = request.form("pwd")

	if usuario <>"" and senha <>"" and usuario = rs("USU_EMA") and senha = rs("USU_SEN") then
		
		'Configuração da Sessão'
		session("user_name") = rs("USU_NOM")
		session("user_cod")  = rs("USU_ID")
		session("user_ema")	 = rs("USU_EMA")

		response.redirect ("inicial.asp")

	else
		response.redirect ("index.asp?msg=errologin")
		set rs = nothing
		set cx = nothing
	end if
%>
