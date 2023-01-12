***Settings***
Library     AppiumLibrary
Resource    massa.robot

*** Variables ***
${AppZe}                http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=com.cerveceriamodelo.modelonow    appActivity=com.cerveceriamodelo.modelonow.MainActivity  automationName=UIautomator2
${PermissaoLocal}       com.android.permissioncontroller:id/permission_allow_foreground_only_button
${BotaoEntendi}         //android.widget.TextView[contains(@text,"ENTENDI")]
${CampoEmail}           class=android.widget.EditText
${CampoSenha}           class=android.widget.EditText
${BotaoContinuarEmail}  //android.widget.TextView[contains(@text,"CONTINUAR COM E-MAIL")]
${BotaoEntrarSenha}     //android.widget.TextView[contains(@text,"ENTRAR COM SENHA")]
${BotaoEntrar}          class=android.widget.Button
${BotaoAlterarEND}      //android.widget.TextView[contains(@text,"ALTERE O SEU ENDEREÇO")]
${CampoCEP}             class=android.widget.EditText
${SelecaoEnd}           //android.widget.TextView[contains(@text,"Praça Antônio Prado - Centro Histórico de São Paulo,...")]
${ENDeNumero}           class=android.widget.EditText
${END_CENTRO}           //android.widget.TextView[contains(@text,"Centro, Mococa - SP, Brasil")]
${ChecKCOMPLEMENTO}     class=android.widget.CheckBox
${BotaoContinuar}       //android.widget.TextView[contains(@text,"CONTINUAR")]
${OpcaoEndCorreto}      //android.widget.TextView[contains(@text,"SIM, O ENDEREÇO ESTÁ CERTO")]
${BotaoBuscar}          //android.widget.TextView[contains(@text,"Busca")]
${CampoFiltro}          class=android.widget.EditText
${BrahmaDuplo}          //android.widget.TextView[contains(@text,"Brahma Duplo Malte 350ml")]
${BotaoAdicionar}       //android.widget.TextView[contains(@text,"ADICIONAR")]
${BotaoVerSacola}       //android.widget.TextView[contains(@text,"VER SACOLA")]

*** Keywords  ***

Iniciar Aplicativo Zé Delivery
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=com.cerveceriamodelo.modelonow    appActivity=com.cerveceriamodelo.modelonow.MainActivity  automationName=UIautomator2
    Sleep               5
Dar permissões ao app
    Click Element       ${PermissaoLocal}
    Click Element       ${BotaoEntendi}

Preencher campo de email
    Sleep               2
    Click Element       ${CampoEmail}
    Input Text          ${CampoEmail}              ${EmailUser}
    Hide Keyboard       #fechar teclado
Clicar no botão "Continuar com Email"
    Click Element       ${BotaoContinuarEmail}
    Sleep               2
Clicar no botão "Entrar com Senha"
    Click Element       ${BotaoEntrarSenha}
    Sleep               2
Preencher Senha de login
    Click Element       ${CampoSenha}
    Input Text          ${CampoSenha}               ${SenhaUser}
    Sleep               2
Clicar no botão "Entrar"
    Click Element       ${BotaoEntrar}

Clicar no botão "Alterar Endereço"
    Sleep               2
    Click Element       ${BotaoAlterarEND}
    Sleep               2
Inserir CEP do usuário
    Click Element       ${CampoCEP}
    Input Text          ${CampoCEP}                 ${CepUser}
    Sleep               3
Selecionar Endereço
    Click Element       ${SelecaoEnd}     
    Sleep               2
Preencher endereço completo
    Input Text          ${ENDeNumero}               ${EndCompletoUser}
    Sleep               2
    Click Element       ${END_CENTRO}
    Sleep               2
    Click Element       ${ChecKCOMPLEMENTO}
    Sleep               1
Clicar no botão "Continuar"
    Click Element       ${BotaoContinuar}
    Sleep               8
Confirmar Endereço
    Click Element       ${OpcaoEndCorreto}
    Sleep               1

Clicar no botão "Buscar"
    Click Element       ${BotaoBuscar}
    Sleep               2
Realizar pesquisa por produto desejado
    Click Element       ${CampoFiltro}
    Input Text          ${CampoFiltro}               ${Produto}
    Sleep               5
Selecionar produto desejado
    Click Element       ${BrahmaDuplo}
    Sleep               3

Clicar no botão "Adicionar"
    Click Element       ${BotaoAdicionar}
    Sleep               3
Clicar no botão "Ver Sacola"
    Click Element       ${BotaoVerSacola}
