*Settings* 
Documentation           Signup Test Suite

Resource                ${EXECDIR}/resources/BasePaginaInicial.robot

Test Setup              Start Session
Test Teardown           Finish Session


*Test Cases* 
Cadastro Primeiro Usuário
   ${user}         Factory User
   Go to login page        ${user}  
   Cique em Cadastra-se grátis        ${user}  
   Preencha os campos corretamente        ${user}  
   Clique em Contato via Whatsapp            ${user}  
   Clique em Eu aceito os Termos de Serviço, Política de privacidade e Cookies        ${user}  
   # Escolha o Tamanho da empresa        ${user}  
   Clique em não sou um robo        ${user}  
   Clique em Cadastre-se grátis     ${user} 

Cadastro Primeiro Usuário - Senha invalida
   ${user}         Factory User
   Go to login page        ${user}  
   Cique em Cadastra-se grátis        ${user}  
   Preencha senha incorreta        ${user}  
   Clique em Contato via Whatsapp            ${user}  
   Clique em Eu aceito os Termos de Serviço, Política de privacidade e Cookies        ${user}  
   # Escolha o Tamanho da empresa        ${user}  
   Clique em não sou um robo        ${user}  
   Aguarde mendagem de erro     ${user} 
   