***Settings***
Library     AppiumLibrary
Resource    massa.robot
Resource    scripts.robot
Resource    steps.robot

*** Test Cases ****
Funcionalidade: Realizar compra pelo Aplicativo Zé Delivery
    Dado que eu inicie o app do Zé Delivery
    E realize o login com minha conta Zé
    E insira meu endereço corretamente 
    Quando eu encontrar o produto que desejo
    Então devo realizar a compra pelo app do zé

