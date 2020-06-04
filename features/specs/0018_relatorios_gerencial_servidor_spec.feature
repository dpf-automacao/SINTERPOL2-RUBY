#language: pt

@all_relatorios_gerencial

Funcionalidade: Gerar Relatorios Gerencial por Servidor

@relatorio_gerencial_servidor_sucesso
Cenario: Gerar Relatorio Gerencial com Sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Relatorios e clico no sub-menu Gerencial por Servidor
    E informo Unidade "INTERPOL/CGCI/DIREX/PF" para Relatorio Gerencial
    E informo Periodo "01/10/2019" ate "17/10/2019"
    E clico para Gerar o Relatorio Gerencial
    Entao eu realizo a geracao do relatorio gerencial com sucesso