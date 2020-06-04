#language: pt

# @all_features
@all_veiculos
Funcionalidade: Manutenção de Documentos de Viagem

@incluir_veiculos
Cenario: Incluir Veículos
    Quando acessar o menu Veículos "Veículos"
    E preencher as informacoes do Veículo
    E salvar a inclusão do Veículo
    Entao vejo a mensagem de confirmação do Veículo

@pesquisar_veiculos
Cenario: Pesquisar Veículos
    Quando acessar o menu Veículos "Veículos"
    E preencher os parametros do Veículo
    E clicar em pesquisar o Veículo
    Entao vejo o Veículo cadastrado

@excluir_veiculos
Cenario: Excluir Veículos
    Quando acessar o menu Veículos "Veículos"
    E preencher os parametros do Veículo
    E clicar em pesquisar o Veículo
    Entao eu aciono o botao excluir para excluir o Veículo