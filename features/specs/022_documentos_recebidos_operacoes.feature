#language: pt

@all_features
@all_operacoes
Funcionalidade: Documentos Recebidos Operações


@alterar_documento_icone @botao_ok_detalhar
Cenario: Alterar documento
    Quando pesquiso o documento no menu "Documentos Recebidos"
    E selecionar o icone para manipular o documento
    Entao eu vejo a tela com o documento em selecionado


@vincular_documento_icone @botao_ok_detalhar
Cenario: Vincular documento
    Quando pesquiso o documento no menu "Documentos Recebidos"
    E selecionar o icone vincular para manipular o documento
    Entao eu vejo a tela de vincular documento


    
@desvincular_documento_icone @botao_ok_detalhar
Cenario: Desvincular documento
    Quando pesquiso o documento no menu "Documentos Recebidos"
    E selecionar o icone desvincular para manipular o documento
    Entao eu vejo a tela de desvincular documento

    
@arquivar_documento_icone @botao_ok_detalhar
Cenario: Arquivar documento
    Quando pesquiso o documento no menu "Documentos Recebidos"
    E selecionar o icone arquivar para manipular o documento
    Entao eu vejo a tela de arquivar documento


@desarquivar_documento_icone @botao_ok_detalhar
Cenario: Desarquivar documento
    Quando pesquiso o documento no menu "Documentos Recebidos"
    E selecionar o icone desarquivar para manipular o documento
    Entao eu vejo a tela de desarquivar documento

