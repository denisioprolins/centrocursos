<!--#include file="includes/cabecalho.asp"-->

<%
	if session("user_name") = "" then
		response.redirect "index.asp?msg=erroSessao"
	end if
%>

<!--Funções JavaScript-->
<script type="text/javascript">

	function valida(){
	    var email = $("#email").val();
	    // expressão regular
	    var emailValido=/^.+@.+\..{2,}$/;
	    if(!emailValido.test(email))
	    {
	        $("#email").focus();
	        alert('Email inválido!');
	        return false;
	    }else{
	    	return true;
	    }
	}

</script>
<div><h2>Cadastro de Usu&aacute;rios</h2></div>
	<form method="post" action="Formulario.asp" onsubmit="return valida()">

		Nome: <input type="text" id="nome" name="nome" /><br>
		Email: <input type="text" id="email" name="email" maxlength="50" size="50" /><br>
		Senha: <input type="password" id="senha" name="senha" /><br>
		Confirmar Senha: <input type="password" id="confsenha" name="confsenha" /><br>
		<br>
		<input type="submit" id="EnviarCadastro" name="EnviarCadastro" value="Enviar" />
		<input type="reset" id="" name="" value="Limpar" />
		<br>

	</form>
<br>

<!--#include file="includes/rodape.asp"-->