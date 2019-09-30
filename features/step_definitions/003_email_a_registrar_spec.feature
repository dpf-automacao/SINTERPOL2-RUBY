#language: pt

Funcionalidade: Realizar procedimentos do menu E-mail 

@realizar_arquivamento_de_email_com_sucesso
Cenario: Realizar Arquivamento de E-mail com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
E eu entro no menu E-mail e clico no sub-menu A Registrar
E clico na Caixa de Entrada e seleciono o primeiro registro para detalhar
E clico para arquivar o E-mail 
Entao eu realizo o Arquivamente do E-mail com sucesso

@realizar_consulta_de_arquivamento_de_email_com_sucesso
Cenario: Realizar Consulta de Arquivamento de E-mail com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
E eu entro no menu E-mail e clico no sub-menu Arquivadas
E insiro Unidade "INTERPOL/DPF/FIG/PR" Nome da conta "email 2" Responsavel "CARLOS BARROSO MARTINS" Data Inicial "27/09/2019" a Data Final "27/09/2019"
Entao eu realizo a Consulta do E-mail arquivado com sucesso



