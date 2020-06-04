#language: pt

@all_email_excluidos

Funcionalidade: Procedimentos do menu E-mail (SUBMENU EXCLUIDAS)

@consultar_mensagem_excluidas_com_sucesso
Cenario: Consultar E-mail Excluido com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu Excluidas
    E informo Unidade "INTERPOL/CGCI/DIREX/PF" para consultar msgs excluidas
    E informo Nome da Conta "TESTE PRE_HOM" para consultar msgs excluidas
    E informo Responsavel pela Exclusao "CARLOS BARROSO MARTI" para consultar msgs excluidas
    E informo periodo inicial "01/07/2019" ate periodo final "16/10/2019" para consultar msgs excluidas
    E clico para Pesquisar as mensagens Excluidas
    Entao eu realizo a Consulta do E-mail Excluido com sucesso
    
@detalhar_mensagem_excluidas_com_sucesso
Cenario: Detalhar E-mail Excluido com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu Excluidas
    E informo Unidade "INTERPOL/CGCI/DIREX/PF" para detalhar msgs excluidas
    E informo Nome da Conta "TESTE PRE_HOM" para detalhar msgs excluidas
    E informo Responsavel pela Exclusao "CARLOS BARROSO MARTI" para detalhar msgs excluidas
    E informo periodo inicial "01/07/2019" ate periodo final "16/10/2019" para detalhar msgs excluidas
    E clico para Pesquisar as mensagens Excluidas para detalhar
    E clico para Detalhar o Email Excluido para detalhar
    Entao eu realizo O Detalhamento do E-mail Excluido com sucesso