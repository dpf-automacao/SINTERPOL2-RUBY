#language: pt

@all_features
@all_incluir
Funcionalidade: Documentos Recebidos

@incluir_documento 
@nao_incluir_novo
Cenario: Incluir Documento
    Quando incluir um documento no menu "Documentos Recebidos"
    E preencher as informacoes do novo documento
    E clicar em salvar
    Entao vejo a mensagem de confirmação

@incluir_mensagemst 
Cenario: Incluir Mensagem ST
 Quando incluir um documento no menu "Mensagem ST"
    E preencher as informacoes da Mensagem ST
    E clicar em salvar
    Entao vejo a mensagem de confirmação
