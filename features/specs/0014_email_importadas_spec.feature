#language: pt

@all_email_importadas

Funcionalidade: Procedimentos do menu E-mail (SUBMENU IMPORTADAS)

@consultar_mensagem_importadas_com_sucesso
Cenario: Consultar E-mail Importado com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu Importadas
    E informo Unidade "INTERPOL/CGCI/DIREX/PF" para consultar msgs importadas
    E informo Nome da Conta "TESTE PRE_HOM" para consultar msgs importadas
    E informo periodo inicial "17/09/2019" ate periodo final "17/10/2019" para consultar msgs importadas
    E clico para Pesquisar as mensagens Importadas
    Entao eu realizo a Consulta do E-mail Importado com sucesso