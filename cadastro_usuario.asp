<!--#include file="includes/cabecalho.asp"-->
<!--#include file="includes/pgi_cnx.asp"-->

<%
	if session("user_name") = "" then
		response.redirect "index.asp?msg=erroSessao"
	end if

	sql = "select PER_ID, PER_NOM from CC_PERFIL"
	set rs_perfil = cx.execute(sql)
%>


<div><h2>Cadastro de Usu&aacute;rios</h2></div>
	<div class="login_form">
	<form method="post" action="Formulario.asp" onsubmit="return valida()" class="niceform">
		<fieldset>
			<dl>
				<dt><label for="email">Nome:</label></dt>
				<dt> <input type="text" id="nome" name="nome" /><br></dt>
				
				<dt>Email: </dt>
				<dt><input type="text" id="email" name="email" maxlength="50" size="50" /><br></d>
				
				<dt>Senha:</dt> 
				<dt><input type="password" id="senha" name="senha" /><br></dt>

				<dt>Confirmar Senha:</dt>
				<dt><input type="password" id="confsenha" name="confsenha" /><br></dt>

				<dt>Perfil:</dt>
				<dt>
					<select>
						<option value="0">-- Selecionar --</option>
						<%
							do while not rs_perfil.EOF
						%>
						<option value="<%=rs_perfil("PER_ID")%>"><%=rs_perfil("PER_NOM")%></option>						
					</select>
						<%
							rs_perfil.next
							loop
						%>
				</dt>
				<br>
				<input type="submit" id="EnviarCadastro" name="EnviarCadastro" value="Enviar" />
				<input type="reset" id="" name="" value="Limpar" />
				<br>
			</dl>
		</fieldset>
	</form>
	</div>
<br>
<!--#include file="includes/rodape.asp"-->