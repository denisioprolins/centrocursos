<!--Funcionalidade: Menu do Header-->
<fieldset style="padding: 0em 0em; background: -webkit-gradient(linear, left top, left 25, from(black), color-stop(4%, #3c3c3c), to(#292929)); border:none;">
	<ul id="nav">
		<li><a href="inicial.asp">Inicio</a></li>
		<li><a >Cadastar</a>
		<%if session("user_per") = 1 then%>
			<ul>
				<li><a href="cadastro_usuario.asp">Usuário do Sistema</a></li>		
			</ul>
		<%end if%>
		</li>
	</ul>
</fieldset>
<!--FUNCIONALIDADE: Efeito para o menu-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js" type="text/javascript" charset="utf-8"></script>	
<script src="http://jquery-ui.googlecode.com/svn/tags/latest/ui/jquery.effects.core.js" type="text/javascript"></script>
<script type="text/javascript" src="js/scripts.js"></script>