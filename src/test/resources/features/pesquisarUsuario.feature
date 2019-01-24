 #language: pt
Funcionalidade: Permitir pesquisar usuário na tela de cadastro de usuário

  Contexto: 
    Dado que estou na pagina "http://selva:8088/pocldc/servlet/com.ci4gx.login"
    Quando eu informar "Filipe" no campo "vUSUARIOLOGIN"
    E informar "1234" no campo "vUSUARIOSENHA"
    E cliar no botão "BTNLOGIN"

  @pesq
  Cenário: Validação de tela de pesquisa de usuário
    Dado que seja exibida a mensagem "Bem vindo Filipe Ferreira de Jesus" no campo "BOASVINDAS_MPAGE"
    Quando eu clicar no menu "Cadastro"
    Então deve exibir uma grid "GridContainerTbl"
    E dentro da "GridContainerTbl" o "Filipe Ferreira de Jesus"

  @pesq
  Esquema do Cenário: Realizar pesquisa de usuário
    Dado que estou na tela de "Cadastro"
    Quando eu informar <usuario> no campo "vUSUARIONOME"
    Então deve exibir <usuario> no item da "GridContainerRow_0001"

    Exemplos: 
      | usuario                    |
      | "Filipe Ferreira de Jesus" |
      | "Leonardo Toller"          |

  @pesq
  Esquema do Cenário: Realizar pesquisa de usuário inválido
    Dado que estou na tela de "Cadastro"
    Quando eu informar <usuario> no campo "vUSUARIONOME"
    Então não deve exibir "nenhum" no item da "GridContainerRow_0001"

    Exemplos: 
      | usuario |
      | "best"  |
      | "oi"    |
