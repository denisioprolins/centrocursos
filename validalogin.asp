<!--#include file="includes/pgi_cnx.asp"-->
<%	
	usuario = request.form("usuario")
	senha = request.form("pwd")

	sql = "select * from CC_Usuario where USU_EMA = '"& usuario &"' and USU_SEN = '"& senha&"'"
	set rs = cx.execute(sql)


	if not rs.eof then

		'Configuração da Sessão'
			session("user_name") = rs("USU_NOM")
			session("user_cod")  = rs("USU_ID")
			session("user_ema")	 = rs("USU_EMA")
			session("user_per")	 = rs("USU_PER")

			response.redirect ("inicial.asp")

		
	else
			
			response.redirect ("index.asp?msg=errologin")
			set rs = nothing
			set cx = nothing
	end if
%>
