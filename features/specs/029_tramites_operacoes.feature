#language: pt

@all_features
@all_tramites
Funcionalidade: Operações Trâmites

@responder_tramites
Cenario: Responder Tramites
    Quando eu pesquisar um documento
    E clicar no botão tramites
    E responder
    Entao eu vejo a tela com a mensagem criada

@arquivar_tramites
Cenario: Arquivar Tramites
    Quando eu pesquisar um documento
    E clicar no botão tramites
    E arquivar
    Entao eu vejo a tela de arquivamento do tramite

@desarquivar_tramites
Cenario: Desarquivar Tramites
    Quando eu pesquisar um documento
    E clicar no botão tramites
    E desarquivar
    Entao eu vejo a tela de desarquivamento do tramite
     
@tramitar_tramites
Cenario: Tramitar Tramites
    Quando eu pesquisar um documento
    E clicar no botão tramitar
    Entao eu vejo a tela de tramitação do tramite


