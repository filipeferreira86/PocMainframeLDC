#language: pt
Funcionalidade: Permitir gerar relatório de usuários em tela

  Contexto: 
    Dado que estou na pagina "http://selva:8088/pocldc/servlet/com.ci4gx.login"
    E eu informar "Filipe" no campo "vUSUARIOLOGIN"
    E informar "1234" no campo "vUSUARIOSENHA"
    E cliar no botão "BTNLOGIN"

  @rel
  Cenário: Validação de tela de relatório de usuário
    Dado que seja exibida a mensagem "Bem vindo Filipe Ferreira de Jesus" no campo "BOASVINDAS_MPAGE"
    Quando eu clicar no menu "Relatório"
    Então deve exibir um comboBox "vUSUARIOATIVO"
    E deve exibir uma grid "GridContainerTbl"
    E dentro da "GridContainerTbl" o "Filipe Ferreira de Jesus"

  @rel
  Esquema do Cenário: Gerar relatório de usuários
    Dado que seja exibida a mensagem "Bem vindo Filipe Ferreira de Jesus" no campo "BOASVINDAS_MPAGE"
    Quando eu clicar no menu "Relatório"
    E clicar no comboBox "vUSUARIOATIVO"
    E clicar no item <itemclicavel>
    Então não deve exibir na grid "GridContainerTbl" itens com itens <itensnfiltrado> ativos

    Exemplos: 
      | itemclicavel                                                                                                                   | itensnfiltrado |
      | "/html/body/form/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div/div/div/div[1]/div/div/div/div[2]/div/select/option[2]" | "Não"          |
      | "/html/body/form/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div/div/div/div[1]/div/div/div/div[2]/div/select/option[3]" | "Sim"          |
