#language: pt

# @all_features
@all_pessoas
Funcionalidade: Manutenção de Pessoas

@incluir_pessoas @ok_exclusao
Cenario: Incluir Pessoas
    Quando acessar o menu Pessoas "Pessoas"
    E preencher as informacoes de Pessoas
    E salvar a inclusão da Pessoa
    Entao vejo a mensagem de confirmação da Pessoa

@pesquisar_pessoas
Cenario: Pesquisar Pessoas
    Quando acessar o menu Pessoas "Pessoas"
    E preencher os parametros de Pessoas
    E clicar em pesquisar a Pessoa
    Entao vejo a Pessoa cadastrada 

@excluir_pessoas
Cenario: Excluir Pessoas
    Quando acessar o menu Pessoas "Pessoas"
    E preencher os parametros de Pessoas
    E clicar em pesquisar a Pessoa
    Entao eu excluo a Pessoa