***Settings***
Library     AppiumLibrary
Resource    scripts.robot

*** Keywords  ***
Dado que eu inicie o app do Zé Delivery
    Iniciar Aplicativo Zé Delivery  
    Dar permissões ao app
E realize o login com minha conta Zé
    Preencher campo de email
    Clicar no botão "Continuar com Email"
    Clicar no botão "Entrar com Senha"
    Preencher Senha de login
    Clicar no botão "Entrar"
E insira meu endereço corretamente 
    Clicar no botão "Alterar Endereço"
    Inserir CEP do usuário
    Selecionar Endereço
    Preencher endereço completo
    Clicar no botão "Continuar"
    Confirmar Endereço
Quando eu encontrar o produto que desejo
    Clicar no botão "Buscar"
    Realizar pesquisa por produto desejado
    Selecionar produto desejado
Então devo realizar a compra pelo app do zé
    Clicar no botão "Adicionar"
    Clicar no botão "Ver Sacola"
    
