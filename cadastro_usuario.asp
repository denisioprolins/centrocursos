<!--#include file="includes/cabecalho.asp"-->
<!--#include file="includes/pgi_cnx.asp"-->

<%
	if session("user_name") = "" then
		response.redirect "index.asp?msg=erroSessao"
	end if
%>
<!-- Inclusão do Jquery Validate -->
<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.validate/1.6/jquery.validate.js" ></script>

<script type="text/javascript">
    $(document).ready(function(){
        $("#cadastro_form").validate({
            rules:{
                nome:{
                    required: true,
                    minlength: 3
                },
                email: {
                    required: true,
                    email: true
                },
                senha: {
                    required: true
                },
                conf_senha:{
                    required: true,
                    equalTo: "#senha"
                },
                perfil:{
                    required: true
                }
            },
            messages:{
                nome:{
                    required: "O campo nome é obrigatorio.",
                    minlength: "O campo nome deve conter no mínimo 3 caracteres."
                },
                email: {
                    required: "O campo email é obrigatorio.",
                    email: "O campo email deve conter um email válido."
                },
                senha: {
                    required: "O campo senha é obrigatorio."
                },
                conf_senha:{
                    required: "O campo confirmação de senha é obrigatorio.",
                    equalTo: "O campo confirmação de senha deve ser identico ao campo senha."
                },
                perfil: "Para cadastrar deve escolher um perfil."
            }
 
        });
    });
</script>

<div><h2>Cadastro de Usu&aacute;rios do Sistema</h2></div>
	<div class="login_form">
	<form id="cadastro_form" method="post" action="modulos/cad_usu.asp" class="niceform">
		<fieldset>
			
				<dt>Nome:</dt>
				<dt><input type="text" id="nome" name="nome" /><br></dt>
				
				<dt>Email: </dt>
				<dt><input type="text" id="email" name="email" maxlength="50" size="50" /><br></d>
				
				<dt>Senha:</dt> 
				<dt><input type="password" id="senha" name="senha" /><br></dt>

				<dt>Confirmar Senha:</dt>
				<dt><input type="password" id="conf_senha" name="conf_senha" /><br></dt>

				<dt>Perfil:</dt>
				<dt>
					<select id="perfil" name="perfil">
						<option value="">Selecionar --</option>
						<%
							sql = "select PER_ID, PER_NOM from CC_PERFIL"
							set rs_perfil = cx.execute(sql)
							DO WHILE NOT rs_perfil.EOF
						%>
						<option value="<%=rs_perfil("PER_ID")%>"><%=konvert(rs_perfil("PER_NOM"))%></option>						
						<%
							rs_perfil.movenext
							LOOP
						%>
						</select>
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