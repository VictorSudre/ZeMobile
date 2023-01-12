***Settings***
Library     AppiumLibrary

*** Variables ***
${PermissaoLocal}       com.android.permissioncontroller:id/permission_allow_foreground_only_button
${BotaoEntendi}         //android.widget.TextView[contains(@text,"ENTENDI")]
${CampoEmail}           class=android.widget.EditText
${CampoSenha}           class=android.widget.EditText
${BotaoContinuarEmail}  //android.widget.TextView[contains(@text,"CONTINUAR COM E-MAIL")]
${BotaoEntrarSenha}     //android.widget.TextView[contains(@text,"ENTRAR COM SENHA")]
${BotaoEntrar}          class=android.widget.Button
#Massa
${EmailUser}            ${email}
${SenhaUser}            ${senha}
**Test Cases
Abrir Aplicação
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=com.cerveceriamodelo.modelonow    appActivity=com.cerveceriamodelo.modelonow.MainActivity  automationName=UIautomator2
    Sleep               5
    Click Element       ${PermissaoLocal}
    Click Element       ${BotaoEntendi}
    #login
    Sleep               2
    Click Element       ${CampoEmail}
    Input Text          ${CampoEmail}              ${EmailUser}
    Hide Keyboard       #fechar teclado
    Click Element       ${BotaoContinuarEmail}
    Sleep               2
    Click Element       ${BotaoEntrarSenha}
    Sleep               2
    Click Element       ${CampoSenha}
    Input Text          ${CampoSenha}               ${SenhaUser}
    Sleep               2
    Click Element       ${BotaoEntrar}
#confirmar endereço
    Sleep               2
    Click Element       //android.widget.TextView[contains(@text,"ALTERE O SEU ENDEREÇO")]
    Sleep               2
    Click Element       class=android.widget.EditText
    Input Text          class=android.widget.EditText           01010010
    Sleep               3
    Click Element       //android.widget.TextView[contains(@text,"Praça Antônio Prado - Centro Histórico de São Paulo,...")]    #endereço
    Sleep               2
    Input Text          class=android.widget.EditText           Praça Antônio Prado, 10
    Sleep               2
    Click Element       //android.widget.TextView[contains(@text,"Centro, Mococa - SP, Brasil")]
    Sleep               2
    Click Element       class=android.widget.CheckBox
    Sleep               1
    Click Element       //android.widget.TextView[contains(@text,"CONTINUAR")]
    Sleep               8
    Click Element       //android.widget.TextView[contains(@text,"SIM, O ENDEREÇO ESTÁ CERTO")]
    Sleep               1
    Click Element       //android.widget.TextView[contains(@text,"Busca")]
    Sleep               2
    Click Element       class=android.widget.EditText
    Input Text          class=android.widget.EditText           BRAHMA
    Sleep               5
    Click Element       //android.widget.TextView[contains(@text,"Brahma Duplo Malte 350ml")]
    Sleep               3
    Click Element       //android.widget.TextView[contains(@text,"ADICIONAR")]
    Sleep               3
    Click Element       //android.widget.TextView[contains(@text,"VER SACOLA")]