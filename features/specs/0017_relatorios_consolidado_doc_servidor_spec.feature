#language: pt

@all_relatorios_consolidado_de_doc

Funcionalidade: Gerar Relatorios Consolidados de Documentos

@ESTA_COM_ERRO_INESPERADO
@relatorio_consolidado_docs_com_insucesso
Cenario: Gerar Relatorio Consolidado com Sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Relatorios e clico no sub-menu Consolidado de Documentos
    E informo Unidade "INTERPOL/CGCI/DIREX/PF" para Relatorio Consolidado
    E clico para Gerar o Relatorio Consolidado por Documentos
    Entao eu realizo a geracao do relatorio consolidado com insucesso