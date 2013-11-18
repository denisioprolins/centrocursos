<%
	session.abandon
	msg = request.querystring("msg")	
%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" media="all" href="css/niceforms-default.css" />
</head>
<body>
	
	<div class="login_form">
         
         <h3>Painel Administrativo</h3>
         
         <a href="#" class="forgot_pass">Esqueceu a senha?</a> 
         
         <form id="autenticacao" method="post" action="validalogin.asp" class="niceform">
         
                <fieldset>
                    <dl>
                        <dt><label for="email">Usuario:</label></dt>
                        <dd><input type="text" name="usuario" id="usuario" size="54" /></dd>
                    </dl>
                    <dl>
                        <dt><label for="password">Senha: </label></dt>
                        <dd><input type="password" name="pwd" id="pwd" size="54" /></dd>
                    </dl>
                    <dl>
                    	<%
							select case msg
								Case "errologin"%>
								<dt><label><font size="3" color="red"><i><b>Usu&aacute;rio</b> ou <b>Login</b> inv&aacute;lidos</i></font></label></dt>
							<%	Case "erroSessao"%>
								<dd><label><font size="3" color="red"><i><b>Sess&atilde;o Encerrada</b></i></font></label></dd>
							<%	
							end select
						%>
                    </dl>
                    
                     <dl class="submit">
                    <input type="submit" name="submit" id="submit" value="Entrar" />
                    <input type="reset" value="Cancelar" />
                     </dl>
                    
                </fieldset>
                
         </form>
         </div>  


</body>
</html>