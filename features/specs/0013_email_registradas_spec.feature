#language: pt

@all_email_registrados

Funcionalidade: Procedimentos do menu E-mail (SUBMENU REGISTRADAS)

@consultar_mensagem_registrada_com_sucesso
Cenario: Consultar E-mail Registrado com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu Registradas
    E informo Unidade "INTERPOL/CGCI/DIREX/PF" para consultar msgs registradas
    E informo Nome da Conta "TESTE PRE_HOM" para consultar msgs registradas
    E informo Responsavel pelo Registro "CARLOS BARROSO MARTI" para consultar msgs registradas
    E informo periodo inicial "01/07/2019" ate periodo final "16/10/2019" para consultar msgs registradas
    E clico para Pesquisar as mensagens Registradas
    Entao eu realizo a Consulta do E-mail Registrado com sucesso
    
@detalhar_mensagem_registrada_com_sucesso
Cenario: Detalhar E-mail Registrado com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu Registradas
    E informo Unidade "INTERPOL/CGCI/DIREX/PF" para detalhar msgs registradas
    E informo Nome da Conta "TESTE PRE_HOM" para detalhar msgs registradas
    E informo Responsavel pelo Registro "CARLOS BARROSO MARTI" para detalhar msgs registradas
    E informo periodo inicial "01/07/2019" ate periodo final "16/10/2019" para detalhar msgs registradas
    E clico para Pesquisar as mensagens Registradas para detalhar
    E clico para Detalhar o Email Registrado para detalhar
    Entao eu realizo O Detalhamento do E-mail Registrado com sucesso