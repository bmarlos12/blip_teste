Para que esse projeto possa rodar na sua máquina é necessário fazer algumas instações e cofigurações.

1.Use uma IDE de programação (Sugestão: Visual Studio Code); 
2.Instale a extensão: Robot Framework Intellisense; 
3.Sugestão: Instale a extensão: Material Icon Theme; 
4.Faça a instalação do Python 3.7 ou superior OBS: Ao fazer a instalação marque a opção Add Python 3.X to PATH 
5. Confira no terminal a versão do Python instalada através do comando: python --version 6. Confira no terminal se o gerenciador de pacotes foi instalado através do comando: pip --version

INSTALAÇÃO DO ROBOT FRAMEWORK NO TERMINAL:

1.pip install robotframework 
2.Verifique se foi instalado através do comando robot --version

No teste foi usada a bibioteca Browser, por isso ela deve ser adicionada por meio de instalação no terminal: Obs: O Node.js deve estar instalado na sua máquina em versão igual ou superior a 15 (https://nodejs.org/en/download/)

1.pip install -U pip 
2.pip install robotframework-browser 
3.rfbrowser init

Estrutura do teste 
##Pasta resources Arquivo Actions.robot, nesse arquivo estão localizados as massas de teste, os seletores css, e as ações a serem executadas pelo framework. Arquivo Base.robot, nesse arquivo estão as configurações de início e fim de teste, assim como as configurações gerais de execução. Pasta Factories com o arquivo Users.py, nesse arquivo constam os usuários e senhas necessárias para execução no teste. Obs: Nessa primeira versão, antes de executar o teste deve trocar o link de novo usuário (link_cadastre_senha), gerando o link no Postman

##Pasta tests Nessa pasta encontram-se os testes feitos para cada sprint e a regressão, nesses arquivos, os casos de testes são montados e as keywords utilizadas no Actions.robot são reaproveitadas.

##Comandos para executar os testes:

No terminal abra a pasta raíz dos testes;
Execute o comando: robot -d ./logs tests/teste_blip.robot (Nesse caso para teste de regressão, o último diretório será sempre o teste que você deseja executar).
O teste abrirá um navegador e gerará um arquivo html com o report, que pode ser visto o link no fim da execução do teste no terminal.