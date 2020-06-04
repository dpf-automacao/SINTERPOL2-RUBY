#language: pt

@all_features
@all_detalhar
Funcionalidade: Responder

@responder_documento
Cenario: Responder documento
    Quando pesquisar o documento no menu "Documentos Recebidos"
    E detalhar o doc
    E responder o documento
    Entao eu envio a mensagem criada



@alterar_documento
Cenario: Alterar documento
    Quando pesquisar o documento no menu "Documentos Recebidos"
    E detalhar o doc
    E alterar o documento
    Entao eu salvo o documento

    
@vincular_documento
Cenario: Vincular documento
    Quando pesquisar o documento no menu "Documentos Recebidos"
    E detalhar o doc
    E vincular o documento
    Entao eu confirmo a vinculação


@desvincular_documento
Cenario: Desvincular documento
    Quando pesquisar o documento no menu "Documentos Recebidos"
    E detalhar o doc
    E desvincular o documento
    Entao eu confirmo a desvinculação


@arquivar_documento
Cenario: Arquivar documento
    Quando pesquisar o documento no menu "Documentos Recebidos"
    E detalhar o doc
    E arquivar o documento
    Entao eu confirmo a arquivação