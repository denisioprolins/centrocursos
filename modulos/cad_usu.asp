<!--#include file="../includes/pgi_cnx.asp"-->
<%
	
		
	USU_NOM = Request.form("nome")
    USU_EMA = Request.form("email")
    USU_SEN = Request.form("senha")
    USU_PER = Request.form("perfil")
    
    sql = "Select * from CC_Usuario WHERE USU_NOM = '"& USU_NOM &"' OR USU_EMA = '"&USU_EMA&"'"

    Set RS_CONF = CX.EXECUTE(sql)

    IF NOT RS_CONF.EOF THEN
    %>

    <script type="text/javascript">
    	alert("Usuário Já cadastrado!");
    	window.location.href = "../cadastro_usuario.asp";
    </script>

    <%ELSE
    	sql = "INSERT INTO CC_Usuario (USU_NOM, USU_EMA, USU_SEN, USU_PER) VALUES ('"&USU_NOM&"','"&USU_EMA&"','"&USU_SEN&"',"&USU_PER&")"
    	Set RS = CX.EXECUTE(sql)
    	 %>

	    <script type="text/javascript">
	    	alert("Usuário cadastrado com sucesso!");
	    	location.href = "../cadastro_usuario.asp";
	    </script>

    	<%
    END IF


%>