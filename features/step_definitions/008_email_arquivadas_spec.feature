#language: pt

Funcionalidade: Realizar procedimentos do menu E-mail (SUBMENU ARQUIVAMENTO)

@tst
Cenario: Realizar Consulta de Arquivamento de E-mail com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu Arquivadas
    E insiro a Unidade "INTERPOL/DPF/FIG/PR" Nome da conta "email 2" Responsavel "CARLOS BARROSO MARTINS" Data Inicial ate Data Final
    Entao eu realizo a Consulta do E-mail arquivado com sucesso