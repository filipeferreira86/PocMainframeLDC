#language: pt

Funcionalidade: Permitir realizar login no sistema de gest�o de usu�rios

	Contexto: Dado que estou na tela de login mainframe
		E o texto "Usuario" � exibido na linha "17" coluna "25"
		Quando eu informar "tollel" na linha "17" coluna "44"
		E senha "tollel" na linha "18" coluna "44"
		E teclar enter    
	
	Cen�rio: Valida��o de tela de login
		Dado estou seja apresentada na tela a informa��o de login na linha 17 coluna 44
		Ent�o deve exibir tela de dados conforme "prt\prtLogin.txt"
	
	
	Cen�rio: Falha ao logar no sistema de gest�o de usu�rios
			 Login inv�lido
		Dado estou seja apresentada na tela a informa��o de login na linha 17 coluna 44
		Quando eu informar "adm" na linha "17" coluna "44"
		E senha "admin" na linha "18" coluna "44"
		E teclar "Enter"
		Ent�o deve exibir mensagem "Dados incorretos, favor verificar"
	
	Cen�rio: Falha ao logar no sistema de gest�o de usu�rios
			 Senha inv�lida
		Dado estou seja apresentada na tela a informa��o de login na linha 17 coluna 44
		Quando eu informar "admin" na linha "17" coluna "44"
		E senha "adm" na linha "18" coluna "44"
		E teclar "Enter"
		Ent�o deve exibir mensagem "Dados incorretos, favor verificar"
			 
	Cen�rio: Logar com sucesso no sistema de gest�o de usu�rios
		Dado estou seja apresentada na tela a informa��o de login na linha 17 coluna 44
		Quando eu informar "admin" na linha "17" coluna "44"
		E senha "admin" na linha "18" coluna "44"
		E teclar "Enter"
		Ent�o deve exibir tela de dados conforme "prt\prtInicialCad.txt"