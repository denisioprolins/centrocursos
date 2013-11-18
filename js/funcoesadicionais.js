<script type="text/javascript">
//FUNCIONALIDADE: Valida e-mail
function validaEmail(email){
           $(document).ready(function(){
           $('#EnviarCadastro').click(function(){
            // captura email
            var email = $("#Email").val();
            // expressão regular
            var emailValido=/^.+@.+\..{2,}$/;
 
            if(!emailValido.test(email))
            {
                alert('Email inválido!');
            }
        });
    });
}
</script>