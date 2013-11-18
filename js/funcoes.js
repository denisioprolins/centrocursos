
//FUNCIONALIDADE: Valida e-mail
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
