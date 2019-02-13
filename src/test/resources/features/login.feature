#language: pt
Funcionalidade: Permitir realizar login no sistema de gestão de usuários

  Contexto: 
    Dado que estou na tela de login mainframe
    E o texto "Usuário" é exibido na linha 16 coluna 14
    E eu informar usuário "SABERA" na linha 16 coluna 24
    E senha "sabera" na linha 17 coluna 24
    E teclar enter
    E o texto "Sign-on Information" é exibido na linha 0 coluna 30
    E teclar enter
    E o texto "COINBRA S.A." é exibido na linha 1 coluna 1
    E eu informar "10" na linha 20 coluna 30
    E teclar enter
    E o texto "Work with All Spooled Files" é exibido na linha 0 coluna 26
		E eu informar "EDTLIBL" na linha 20 coluna 6
		E teclar enter
		E o texto "Edit Library List" é exibido na linha 0 coluna 31
		E eu informar "GXPGMIC4" na linha 6 coluna 11
		E teclar enter
		E o texto "GXPGMIC4" é exibido na linha 7 coluna 11
		E eu informar "GXDTAIC4" na linha 6 coluna 11
		E teclar enter
		E o texto "GXDTAIC4" é exibido na linha 7 coluna 11
		E teclar enter
		E o texto "Work with All Spooled Files" é exibido na linha 0 coluna 26
    E eu informar "CALL PGM(GXPGMIC4/CI4L01)" na linha 20 coluna 6
    E teclar enter

  @log @exec
  Cenário: Validação de tela de login
    Dado seja apresentada na tela a informação de login do sistema de gestão "LDC - Sistema de controle de usuários" na linha 3 coluna 21
    Então deve exibir tela de dados conforme "\src\test\resources\prt\prtLogin.txt"

  @log @exec
  Cenário: Falha ao logar no sistema de gestão de usuários
    Login inválido
    Dado seja apresentada na tela a informação de login do sistema de gestão "LDC - Sistema de controle de usuários" na linha 3 coluna 21
    Quando eu informar "adm" na linha 7 coluna 27
    E eu informar "admin" na linha 9 coluna 27
    E teclar enter
    E o texto "Cadastro" é exibido na linha 20 coluna 2
    Então o texto "Cadastro não encontrado com este usuário e senha. Favor vali" deve ser exibido na linha 20 coluna 2

  @log @exec
  Cenário: Falha ao logar no sistema de gestão de usuários
    Senha inválida
    Dado seja apresentada na tela a informação de login do sistema de gestão "LDC - Sistema de controle de usuários" na linha 3 coluna 21
    Quando eu informar "ANDREY" na linha 7 coluna 27
    E eu informar "SENA" na linha 9 coluna 27
    E teclar enter
    E o texto "Cadastro" é exibido na linha 20 coluna 2
    Então o texto "Cadastro não encontrado com este usuário e senha. Favor vali" deve ser exibido na linha 20 coluna 2

  @log @exec
  Cenário: Logar com sucesso no sistema de gestão de usuários
    Dado seja apresentada na tela a informação de login do sistema de gestão "LDC - Sistema de controle de usuários" na linha 3 coluna 21
    Quando eu informar "ANDREY" na linha 7 coluna 27
    E eu informar "SENHA" na linha 9 coluna 27
    E teclar enter
    E o texto "Digite" é exibido na linha 14 coluna 12
    Então deve exibir tela de dados conforme "\src\test\resources\prt\telaInicial.txt"
