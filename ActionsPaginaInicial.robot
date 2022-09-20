*Settings*
Documentation           Actions of System

*Keywords*

Go to login page
    [Arguments]                 ${user}
    Go To                       ${user}[site_base]
Cique em Cadastra-se grátis
    [Arguments]                 ${user}
    Click                       id=blip-register
    Wait For Elements State     text=Complete o seu cadastro

Preencha os campos corretamente
    [Arguments]         ${user}
    Fill Text           id=FullName                ${user}[nome_completo]
    Fill Text           id=Email                   ${user}[email_cadastro]
    Fill Text           id=Password                ${user}[senha_correta]
    Fill Text           id=PhoneNumber             ${user}[telefone]
    Fill Text           id=CompanySite             ${user}[site_empresa]

Preencha senha incorreta
    [Arguments]         ${user}
    Fill Text           id=FullName                ${user}[nome_completo]
    Fill Text           id=Email                   ${user}[email_cadastro]
    Fill Text           id=Password                ${user}[senha_incorreta]
    Fill Text           id=PhoneNumber             ${user}[telefone]
    Fill Text           id=CompanySite             ${user}[site_empresa]
Clique em Contato via Whatsapp
    [Arguments]                 ${user}
    Click                       css=#policyCheckbox div >> nth=0
                

Clique em Eu aceito os Termos de Serviço, Política de privacidade e Cookies
    [Arguments]                 ${user}
    Click                        css=#policyCheckbox div >> nth=1

Escolha o Tamanho da empresa
    [Arguments]                 ${user}
    Select Options By        xpath=//*[@id="ncid-82a5"]/div[1]/div[1]/div/div[1]/label           text        5 a 19 funcionários 
    
    
Clique em não sou um robo
    [Arguments]                 ${user}
    Click                 xpath=//*[@id="recaptcha-anchor"]/div[1]

Clique em Cadastre-se grátis
    [Arguments]                 ${user}
    Click                id=submitButton


Aguarde mensagem de erro
    [Arguments]                 ${user}
    Wait For Elements State      text=A senha deve conter pelo menos 8 itens: um maiúsculo, um minúsculo, um número e um caractere especial.