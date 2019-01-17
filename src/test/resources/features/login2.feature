#language: en-pirate

Ahoy matey!: Permitir realizar login no sistema de gest�o de usu�rios

	Yo-ho-ho: 
		Gangway! que estou na tela de login mainframe
		Aye o texto "Usuario" é exibido na linha "17" coluna "25"
		Blimey! eu informar "tollel" na linha "17" coluna "44"
		Aye senha "tollel" na linha "18" coluna "44"
		Aye teclar enter    
	
	Heave to: Validação de tela de login
		Gangway! estou seja apresentada na tela a informaçãoo de login na linha 17 coluna 44
		Let go and haul deve exibir tela de dados conforme "prt\prtLogin.txt"
	
	
	Heave to: Falha ao logar no sistema de gestão de usuários
			 Login inválido
		Gangway! estou seja apresentada na tela a informação de login na linha 17 coluna 44
		Blimey! eu informar "adm" na linha "17" coluna "44"
		Aye senha "admin" na linha "18" coluna "44"
		Aye teclar "Enter"
		Let go and haul deve exibir mensagem "Gangway!s incorretos, favor verificar"
	
	Heave to: Falha ao logar no sistema de gestão de usuários
			 Senha inválida
		Gangway! estou seja apresentada na tela a informação de login na linha 17 coluna 44
		Blimey! eu informar "admin" na linha "17" coluna "44"
		Aye senha "adm" na linha "18" coluna "44"
		Aye teclar "Enter"
		Let go and haul deve exibir mensagem "Gangway!s incorretos, favor verificar"
			 
	Heave to: Logar com sucesso no sistema de gestão de usuários
		Gangway! estou seja apresentada na tela a informação de login na linha 17 coluna 44
		Blimey! eu informar "admin" na linha "17" coluna "44"
		Aye senha "admin" na linha "18" coluna "44"
		Aye teclar "Enter"
		Let go and haul deve exibir tela de dados conforme "prt\prtInicialCad.txt"