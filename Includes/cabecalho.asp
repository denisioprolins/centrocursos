<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>Prisma - Software</title>

	<script src="js\jquery-1.10.2.js"></script>
	<script src="js\jquery-ui-1.10.3\jquery-1.9.1.js"></script>
	<script src="js\funcoes.js"></script>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>	
<body>
	<fieldset>
		<div align="left" ><font color="black" size="7" face="arial back">CENTRO</font></div>
		<div align="right"><%response.Write("Ol&aacute;, "&session("user_name"))%>  <a href="index.asp">Sair</a></div>
		<div><% response.Write session("usr_ema") %></div>
	</fieldset>

<fieldset style="padding: 0em 0em; background: -webkit-gradient(linear, left top, left 25, from(black), color-stop(4%, #3c3c3c), to(#292929)); border:none;">
	<ul id="nav">
		<li><a href="inicial.asp">Inicio</a></li>
		<li><a href="#">Cadastar</a>
			<ul>
				<li><a href="cadastro_usuario.asp">Usuario</a></li>		
			</ul>
		</li>
	</ul>
</fieldset>
<!--FUNCIONALIDADE: Efeito do menu de cima-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js" type="text/javascript" charset="utf-8"></script>	
<script src="http://jquery-ui.googlecode.com/svn/tags/latest/ui/jquery.effects.core.js" type="text/javascript"></script>
<script type="text/javascript" src="js/scripts.js"></script>
