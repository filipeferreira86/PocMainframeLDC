#language: pt

Funcionalidade: Permitir realizar login no sistema de gest�o de usu�rios

	Contexto: Dado que estou na tela de login mainframe
		E o texto "Usuario" é exibido na linha "17" coluna "25"
		Quando eu informar "tollel" na linha "17" coluna "44"
		E senha "tollel" na linha "18" coluna "44"
		E teclar enter    
	
	Cenário: Validação de tela de login
		Dado estou seja apresentada na tela a informaçãoo de login na linha 17 coluna 44
		Então deve exibir tela de dados conforme "prt\prtLogin.txt"
	
	
	Cenário: Falha ao logar no sistema de gestão de usuários
			 Login inválido
		Dado estou seja apresentada na tela a informação de login na linha 17 coluna 44
		Quando eu informar "adm" na linha "17" coluna "44"
		E senha "admin" na linha "18" coluna "44"
		E teclar "Enter"
		Então deve exibir mensagem "Dados incorretos, favor verificar"
	
	Cenário: Falha ao logar no sistema de gestão de usuários
			 Senha inválida
		Dado estou seja apresentada na tela a informação de login na linha 17 coluna 44
		Quando eu informar "admin" na linha "17" coluna "44"
		E senha "adm" na linha "18" coluna "44"
		E teclar "Enter"
		Então deve exibir mensagem "Dados incorretos, favor verificar"
			 
	Cenário: Logar com sucesso no sistema de gestão de usuários
		Dado estou seja apresentada na tela a informação de login na linha 17 coluna 44
		Quando eu informar "admin" na linha "17" coluna "44"
		E senha "admin" na linha "18" coluna "44"
		E teclar "Enter"
		Então deve exibir tela de dados conforme "prt\prtInicialCad.txt"