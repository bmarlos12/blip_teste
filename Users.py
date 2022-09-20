from faker import Faker
fake = Faker()

def factory_user():
    user = {
        'site_base':'https://account.blip.ai/login?ReturnUrl=%2Fconnect%2Fauthorize%2Fcallback%3Fclient_id%3Dblip-portal%26redirect_uri%3Dhttps%253A%252F%252Fportal.blip.ai%252Fauthorize%26response_type%3Did_token%2520token%26scope%3Doffline_access%2520openid%2520profile%2520email%2520api-msging-hub.full_access%26state%3Dac7affc61f2f41b583a38097040b3159%26nonce%3Df3982e609ca24569808c458150071868',
        'nome_completo':'Eu Sou Um Teste',
        'email_cadastro':fake.free_email(),
        'senha_correta':'Teste123@',
        'senha_incorreta':'123',
        'telefone':'61993728160',
        'site_empresa':'www.teste.com.br'

    }
        

    return user
