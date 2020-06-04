#language: pt


@all_documentos_viagem
Funcionalidade: Manutenção de Documentos de Viagem

@incluir_documentos_viagem @ok_exclusao
Cenario: Incluir Documento de viagem
    Quando acessar o menu Documentos de Viagem "Documentos de Viagem"
    E preencher as informacoes do Documentos de Viagem
    E salvar a inclusão do Documentos de Viagem
    Entao vejo a mensagem de confirmação do Documento de viagem

@pesquisar_documentos_viagem
Cenario: Pesquisar Documento de viagem
    Quando acessar o menu Documentos de Viagem "Documentos de Viagem"
    E preencher os parametros do Documentos de Viagem
    E clicar em pesquisar o Documentos de Viagem
    Entao vejo o Documento de viagem cadastrado

@excluir_documentos_viagem
Cenario: Excluir Documento de viagem
    Quando acessar o menu Documentos de Viagem "Documentos de Viagem"
    E preencher os parametros do Documentos de Viagem
    E clicar em pesquisar o Documentos de Viagem
    Entao eu aciono o botao excluir