#language: pt
Funcionalidade: Permitir manutenção de usuário no sistema de gestão de usuários

  Contexto: 
    Dado que estou na pagina "http://selva:8088/pocldc/servlet/com.ci4gx.login"
    Quando eu informar "Filipe" no campo "vUSUARIOLOGIN"
    E informar "1234" no campo "vUSUARIOSENHA"
    E cliar no botão "BTNLOGIN"
    E que seja exibida a mensagem "Bem vindo Filipe Ferreira de Jesus" no campo "BOASVINDAS_MPAGE"
    E eu clicar no menu "Cadastro"

  @man
  Cenário: Validação de tela de cadastro de usuário
    Dado que estou na tela de cadastro usuário
    Quando eu clicar no "BTNINSERT"
    Então deve exibir texto "Login" no label "/html/body/form/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div/div/div/div[2]/div/div/div[1]/div/div/label"
    E campo "USUARIOLOGIN"
    E deve exibir texto "Nome" no label "/html/body/form/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div/div/div/div[2]/div/div/div[2]/div/div/label"
    E campo "USUARIONOME"
    E deve exibir texto "Senha" no label "/html/body/form/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div/div/div/div[2]/div/div/div[3]/div/div/label"
    E campo "USUARIOSENHA"
    E deve exibir texto "Ativo" no label "/html/body/form/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div/div/div/div[2]/div/div/div[4]/div/div/label"
    E campo "USUARIOATIVO"

  @man
  Cenário: Validação de tela de alteração de usuário
    Dado que estou na tela de cadastro usuário
    Quando eu clicar no "vUPDATE_0001" #Por Id
    Então deve exibir texto "Login" no label "/html/body/form/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div/div/div/div[2]/div/div/div[1]/div/div/label"
    E deve exibir texto "Nome" no label "/html/body/form/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div/div/div/div[2]/div/div/div[2]/div/div/label"
    E campo "USUARIONOME"
    E deve exibir texto "Senha" no label "/html/body/form/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div/div/div/div[2]/div/div/div[3]/div/div/label"
    E campo "USUARIOSENHA"
    E deve exibir texto "Ativo" no label "/html/body/form/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div/div/div/div[2]/div/div/div[4]/div/div/label"
    E campo "USUARIOATIVO"

  @man
  Esquema do Cenário: Validação de mensagens de erro na inclusão de usuário
    Dado que estou no formulario de "BTNINSERT"
    Quando eu informar "Teste" no campo "USUARIOLOGIN"
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

  @man
  Cenário: Inclusão de novo usuário
    Dado que estou no formulario de "BTNINSERT"
    Quando eu informar "Teste" no campo "USUARIOLOGIN"
    E informar "Teste" no campo "USUARIONOME"
    E informar "Teste" no campo "USUARIOSENHA"
    E clicar no botão "BUTTON1"
    Então deve exibir uma grid "GridContainerTbl"
    E dentro da "GridContainerTbl" o "Teste"

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
