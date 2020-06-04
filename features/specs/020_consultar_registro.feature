#language: pt

# @all_features
@all_consultar
Funcionalidade: Consultar Documentos Recebidos

@consultar_documento
Cenario: Consultar Documento Recebido
    Quando pesquisar um documento no menu "Documentos Recebidos"
    E preencher os parametros de pesquisa
    E clicar em pesquisar
    Entao vejo o resultado da pesquisa

@detalhar_mensagem_st
Cenario: Consultar Mensagem ST
 Quando detalhar um documento no menu "Mensagem ST"
    E preencher os campos para realizar pesquisa da mensagem st
    E clicar em pesquisar
    Entao clico em detalhar