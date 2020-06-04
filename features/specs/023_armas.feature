#language: pt

# @all_features
@all_armas
Funcionalidade: Manutenção de Armas

@incluir_arma @ok_exclusao
Cenario: Incluir Arma
    Quando acessar o menu armas "Armas"
    E preencher as informacoes da arma
    E salvar a inclusão da arma
    Entao vejo a mensagem de confirmação da arma

@pesquisar_arma
Cenario: Pesquisar Arma
    Quando acessar o menu armas "Armas"
    E preencher os parametros de pesquisa da arma
    E clicar em pesquisar
    Entao vejo o resultado

@excluir_arma
Cenario: Excluir Arma
    Quando acessar o menu armas "Armas"
    E preencher os parametros de pesquisa para exclusao
    E clicar em pesquisar
    Entao eu pressiono o botao excluir

