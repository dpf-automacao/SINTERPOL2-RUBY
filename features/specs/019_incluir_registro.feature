#language: pt

@all_features
@all_incluir
Funcionalidade: Documentos Recebidos

@incluir_documento 
Cenario: Incluir Documento
    Quando entrar no sistema com o usuario "barroso.cbm" e senha "ctidpf"
    E incluir um documento no menu "Documentos Recebidos"
    E preencher as informacoes do novo documento
    E clicar em salvar
    Entao vejo a mensagem de confirmação

@incluir_mensagemst 
Cenario: Incluir Mensagem ST
 Quando incluir um documento no menu "Mensagem ST"
    E preencher as informacoes da Mensagem ST
    E clicar em salvar
    Entao vejo a mensagem de confirmação
