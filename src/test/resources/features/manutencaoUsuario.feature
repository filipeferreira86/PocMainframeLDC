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
    E eu informar "0004" na linha 2 coluna 12
    E eu informar "Teste" na linha 3 coluna 12
    E eu informar "Teste" na linha 4 coluna 12
    E eu informar "21/06/86" na linha 5 coluna 12
    E eu informar "123456" na linha 6 coluna 12
    E eu informar "S" na linha 7 coluna 12
    E eu informar "%" na linha <linha> coluna <coluna>
    E teclar enter
    E aguardar tela carregar
    Então deve exibir <alerta> na linha 23 coluna 1

    Exemplos: 
      | linha | coluna | alerta |
      |     2 |     12 | "0009" |
      |     5 |     12 | "0009" |

  @man @exec
  Cenário: Inclusão de novo usuário
    Dado o texto "Digite" é exibido na linha 14 coluna 12
    Quando eu informar "1" na linha 8 coluna 22
    E teclar enter
    E o texto "Consulta" é exibido na linha 1 coluna 2
    E teclar PF2
    E o texto "TIC4" é exibido na linha 0 coluna 1
    E eu informar "0004" na linha 2 coluna 12
    E eu informar "TESTE" na linha 3 coluna 12
    E eu informar "TESTE" na linha 4 coluna 12
    E eu informar "21/06/86" na linha 5 coluna 12
    E eu informar "123456" na linha 6 coluna 12
    E eu informar "S" na linha 7 coluna 12
    E teclar enter
    E o texto "Inserindo dados. Tecle Enter para confirmar." é exibido na linha 23 coluna 1
    E teclar enter
    E o texto "Os dados foram inseridos." é exibido na linha 23 coluna 1
    E teclar PF3
    E o texto "Consulta" é exibido na linha 1 coluna 2
    E teclar PF5
    E aguardar tela carregar
    Então deve exibir "4" na linha 8 coluna 10 
    E deve exibir "TESTE" na linha 8 coluna 14
    E deve exibir "TESTE" na linha 8 coluna 44
    E deve exibir "S" na linha 8 coluna 65

  @man
  Cenário: Validação de mensagens de erro na alteração de usuário
    Dado o texto "Digite" é exibido na linha 14 coluna 12
    Quando eu informar "1" na linha 8 coluna 22
    E teclar enter
    E o texto "Consulta" é exibido na linha 1 coluna 2
    E eu informar "0001" na linha 8 coluna 2
    E teclar enter
    E o texto "TIC4" é exibido na linha 0 coluna 1
    E eu informar "%" na linha 5 coluna 12
    E teclar enter
    E aguardar tela carregar
    Então deve exibir "0009" na linha 23 coluna 1

  @man
  Cenário: Alteração de usuário
    Dado o texto "Digite" é exibido na linha 14 coluna 12
    Quando eu informar "1" na linha 8 coluna 22
    E teclar enter
    E o texto "Consulta" é exibido na linha 1 coluna 2
    E eu informar "0001" na linha 8 coluna 2
    E teclar enter
    E o texto "TIC4" é exibido na linha 0 coluna 1
    E eu informar "TESTE1" na linha 3 coluna 12
    E eu informar "TESTE1" na linha 4 coluna 12
    E eu informar "21/06/96" na linha 5 coluna 12
    E eu informar "7410" na linha 6 coluna 12
    E eu informar "N" na linha 7 coluna 12
    E teclar enter
    E o texto "Modificando dados. Tecle Enter para confirmar." é exibido na linha 23 coluna 1
    E teclar enter
    E aguardar tela carregar
    E teclar PF5
    E aguardar tela carregar
    Então deve exibir "4" na linha 8 coluna 10 
    E deve exibir "TESTE1" na linha 8 coluna 14
    E deve exibir "TESTE1" na linha 8 coluna 44
    E deve exibir "N" na linha 8 coluna 65
    
    
  @man @exec
  Cenário: exclusão de usuário
    Dado o texto "Digite" é exibido na linha 14 coluna 12
    Quando eu informar "1" na linha 8 coluna 22
    E teclar enter
    E o texto "Consulta" é exibido na linha 1 coluna 2
    E eu informar "0002" na linha 8 coluna 2
    E teclar enter
    E o texto "TIC4" é exibido na linha 0 coluna 1
    E teclar enter
    E o texto "Consulta" é exibido na linha 1 coluna 2
    E teclar PF5
    E aguardar tela carregar
    Então linha 8 coluna 0 am branco
