	<%		
		if Pnome <> "" and Pnome = "Denisio" then
			Response.Write "Olá "& Pnome &"<br> Seja Bem vindo!<br><br>"
		end if	

		fname = request.cookies("fristname") 
		response.write fname
	%>	