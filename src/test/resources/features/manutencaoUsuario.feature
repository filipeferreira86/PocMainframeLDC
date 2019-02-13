#language: pt
Funcionalidade: Permitir manutenção de usuário no sistema de gestão de usuários

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
    E seja apresentada na tela a informação de login do sistema de gestão "LDC - Sistema de controle de usuários" na linha 3 coluna 21
    E eu informar "ANDREY" na linha 7 coluna 27
    E eu informar "SENHA" na linha 9 coluna 27
    E teclar enter
    
  @man @exec
  Cenário: Validação de tela de cadastro de usuário
    Dado o texto "Digite" é exibido na linha 14 coluna 12
    Quando eu informar "1" na linha 8 coluna 22
    E teclar enter
    E o texto "Consulta" é exibido na linha 1 coluna 2
    Então deve exibir tela de dados conforme "\src\test\resources\prt\prtManutUsuario1.txt"

  @man @exec
  Cenário: Validação de tela de alteração de usuário
    Dado o texto "Digite" é exibido na linha 14 coluna 12
    Quando eu informar "1" na linha 8 coluna 22
    E teclar enter
    E o texto "Consulta" é exibido na linha 1 coluna 2
    E eu informar "   1" na linha 6 coluna 2
    E teclar enter
    Então o texto "TIC4" é exibido na linha 0 coluna 1
    E deve exibir tela de dados conforme "\src\test\resources\prt\prtAlteracao.txt"
    
  @man
  Esquema do Cenário: Validação de mensagens de erro na inclusão de usuário
    Dado o texto "Digite" é exibido na linha 14 coluna 12
    Quando eu informar "1" na linha 8 coluna 22
    E teclar enter
    E o texto "Consulta" é exibido na linha 1 coluna 2
    E teclar PF2
    E o texto "TIC4" é exibido na linha 0 coluna 1
    E eu informar "Teste" na linha 8 coluna 22
    E informar "Teste" no campo "USUARIONOME"
    E informar "Teste" no campo "USUARIOSENHA"
    E limpar campo <campolimpo>
    E clicar no botão "BUTTON1"
    Então deve exibir mensagem <mensagem> no campo <alerta>

    Exemplos: 
      | campolimpo     | mensagem                                       | alerta                 |
      | "USUARIOLOGIN" | "O campo Login é obrigatório. Favor informar." | "USUARIOLOGIN_Balloon" |
      | "USUARIONOME"  | "O campo Nome é obrigatório. Favor informar."  | "USUARIONOME_Balloon"  |
      | "USUARIOSENHA" | "O campo Senha é obrigatório. Favor informar." | "USUARIOSENHA_Balloon" |

  @man @exec
  Cenário: Inclusão de novo usuário
    Dado o texto "Digite" é exibido na linha 14 coluna 12
    Quando eu informar "1" na linha 8 coluna 22
    E teclar enter
    E o texto "Consulta" é exibido na linha 1 coluna 2
    E teclar PF2
    Então o texto "TIC4" é exibido na linha 0 coluna 1
    E deve exibir tela de dados conforme "\src\test\resources\prt\prtInclusao.txt"

  @man
  Esquema do Cenário: Validação de mensagens de erro na alteração de usuário
    Dado eu informar "Teste" no campo "vUSUARIONOME"
    E que estou no formulario de "vUPDATE_0001" #Por Id
    Quando limpar campo <campolimpo>
    E clicar no botão "BUTTON1"
    Então deve exibir mensagem <mensagem> no campo <alerta>

    Exemplos: 
      | campolimpo     | mensagem                                       | alerta                 |
      | "USUARIONOME"  | "O campo Nome é obrigatório. Favor informar."  | "USUARIONOME_Balloon"  |
      | "USUARIOSENHA" | "O campo Senha é obrigatório. Favor informar." | "USUARIOSENHA_Balloon" |

  @man
  Cenário: Alteração de usuário
    Dado eu informar "Teste" no campo "vUSUARIONOME"
    Dado que estou no formulario de "vUPDATE_0001" #Por Id
    Quando eu informar "Teste1" no campo "USUARIONOME"
    E informar "Teste1" no campo "USUARIOSENHA"
    E clicar no botão "BUTTON1"
    Então deve exibir uma grid "GridContainerTbl"
    E dentro da "GridContainerTbl" o "Teste1"
