#language: pt

@all_features
@all_home_operacoes
Funcionalidade: Operações Home

@responder_home_novo
Cenario: Responder Home
    Quando eu pesquisar um documento na tela home
    E for detalhar e responder o documento
    Entao eu vejo o formulário de resposta

@vincular_home_novo
Cenario: Vincular documento Home
    Quando eu pesquisar um documento na tela home
    E for detalhar e vincular o documento
    Entao eu vejo a tela de vinculação
    
@desvincular_home_novo
Cenario: Desvincular documento Home
    Quando eu pesquisar um documento na tela home
    E for detalhar e desvincular o documento
    Entao eu vejo a tela de desvinculação

@arquivar_home_novo
Cenario: Arquivar documento Home
    Quando eu pesquisar um documento na tela home
    E for detalhar e arquivar o documento
    Entao eu vejo a tela de arquivamento

@desarquivar_home_novo
Cenario: Desarquivar documento Home
    Quando eu pesquisar um documento na tela home
    E for detalhar e desarquivar o documento
    Entao eu vejo a tela de desarquivamento

@tramitar_home_novo @botao_ok_detalhar
Cenario: Tramitar documento Home
    Quando eu pesquisar um documento na tela home
    E for detalhar e tramitar o documento
    Entao eu vejo a tela de tramitação

    
@tramites_copia_home_novo
Cenario: Criar cópia documento Home
    Quando eu pesquisar um documento na tela home
    E clicar em tramites
    E criar copia
    Entao eu crio uma copia do documento