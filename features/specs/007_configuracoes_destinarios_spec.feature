#language: pt

@all_configuracoes_destinatarios

Funcionalidade: Configuracao de Destinatarios

@incluir_destinatario_com_sucesso
Cenario: Incluir Destinatario com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Destinatarios
    E clico para Incluir Destinatario
    E seleciono "Email e I-24/7" para inclusao de Destinatario
    E preencho Endereco de Email "teste22@gmail.com" para inclusao de Destinatario
    E preencho Descricao "Cadastro de Email para Destinatario - Automacao" para inclusao de Destinatario
    E seleciono Pais "Brasil" e estado "DF" para inclusao de Destinatario
    E clico para Salvar a inclusao de Destinatario
    Entao eu realizo a inclusao de um novo destinatario com sucesso

@consultar_destinatario_com_sucesso
Cenario: Consulta de Destinatario com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Destinatarios
    E seleciono "Email e I-24/7" para consulta de Destinatario
    E preencho Endereco de Email "teste22@gmail.com" para consulta de Destinatario
    E preencho Descricao "Cadastro de Email para Destinatario - Automacao" para consulta de Destinatario
    E clico para Pesquisar o Destinatario
    Entao eu realizo a consulta de um destinatario com sucesso
    
@editar_destinatario_com_sucesso
Cenario: Editar Destinatario com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Destinatarios
    E seleciono "Email e I-24/7" para consulta de Destinatario
    E preencho Endereco de Email "teste22@gmail.com" para consulta de Destinatario
    E preencho Descricao "Cadastro de Email para Destinatario - Automacao" para consulta de Destinatario
    E clico para Pesquisar o Destinatario
    E clico para Editar Destinatario
    E seleciono "Email Representação Regional" para edicao de Destinatario
    E preencho Endereco de Email "teste222@gmail.com" para edicao de Destinatario
    E preencho Descricao "Cadastro de Email para Destinatario - Automacao - Edition" para edicao de Destinatario
    E seleciono Pais "Brasil" e estado "SP" para edicao de Destinatario
    E clico para Salvar a edicao de Destinatario
    Entao eu realizo a edicao de um destinatario com sucesso

@excluir_destinatario_com_sucesso
Cenario: Excluir Destinatario com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Destinatarios
    E seleciono "Email Representação Regional" para consulta de Destinatario
    E preencho Endereco de Email "teste222@gmail.com" para consulta de Destinatario
    E preencho Descricao "Cadastro de Email para Destinatario - Automacao - Edition" para consulta de Destinatario
    E clico para Pesquisar o Destinatario
    E clico para Excluir Destinario
    Entao eu realizo a exclusao de um destinatario com sucesso
