*Settings*
Documentation       Base Test

Library     Browser
Library     factories/Users.py
Library     RequestsLibrary

Resource    ActionsPaginaInicial.robot 

*Keywords*
Start Session
    New Browser         chromium   headless=False      slowMo=00:00:00.5     
    New Page            https://account.blip.ai/login?ReturnUrl=%2Fconnect%2Fauthorize%2Fcallback%3Fclient_id%3Dblip-portal%26redirect_uri%3Dhttps%253A%252F%252Fportal.blip.ai%252Fauthorize%26response_type%3Did_token%2520token%26scope%3Doffline_access%2520openid%2520profile%2520email%2520api-msging-hub.full_access%26state%3Dac7affc61f2f41b583a38097040b3159%26nonce%3Df3982e609ca24569808c458150071868

Finish Session
    Take Screenshot 

