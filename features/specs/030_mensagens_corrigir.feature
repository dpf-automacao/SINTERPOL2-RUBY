#language: pt

# @all_features
@all_mensagens_corrigir
Funcionalidade: Operações Pasta Corrigir Mensagem

@criar_mensagem_perfil_analista
Cenario: Criar Documento Analista
    Quando eu incluir um novo documento no menu "Documentos Recebidos"
    E salvar o documento
    Entao eu vejo a tela de sucesso

@criar_mensagem_perfil
Cenario: Criar mensagem a corrigir
    Dado que estou na pagina inicial do siseg
    Quando eu informo usuario "veronique.vac" e senha "ctidpf"
    E eu pesquisar um documento para criar mensagem do analista
    E responder o documento com a analista
    Então eu crio a mensagem

@solicitar_correcao
Cenario: Solicitar correção Mensagem
    Dado que estou na pagina inicial do siseg
    Quando eu informo usuario "barroso.cbm" e senha "ctidpf"
    E eu pesquisar uma mensagem para solicitar correcao
    Então eu solicito a correcao

@corrigir_analista
Cenario: Corrigir Mensagem
    Dado que estou na pagina inicial do siseg
    Quando eu informo usuario "veronique.vac" e senha "ctidpf"
    E eu pesquisar uma mensagem para corrigir
    Então eu corrijo a mensagem

# @criar_mensagem_analista_excluir
# Cenario: Criar mensagem a excluir
#     Dado que estou na pagina inicial do siseg
#     Quando eu informo usuario "veronique.vac" e senha "ctidpf"
#     E eu pesquisar um documento para criar mensagem do analista
#     E responder o documento com a analista
#     Então eu crio a mensagem

# @solicitar_correcao_exclusao
# Cenario: Solicitar correção Mensagem
#     Dado que estou na pagina inicial do siseg
#     Quando eu informo usuario "barroso.cbm" e senha "ctidpf"
#     E eu pesquisar uma mensagem para solicitar correcao
#     Então eu solicito a correcao

