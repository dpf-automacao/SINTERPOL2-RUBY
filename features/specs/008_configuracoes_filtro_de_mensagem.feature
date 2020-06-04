#language: pt

@all_configuracoes_filtro_de_mensagem

Funcionalidade: Configuracao de Filtro de Mensagem

@ERRO_AO_INCLUIR_MESMO_NOME_DE_PASTA
@incluir_filtro_de_mensagem
Cenario: Incluir Filtro de Mensagem com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Filtro de Mensagem
    E clico para Incluir Filtro de Mensagem
    E informo Nome do Filtro "filtro_automacao" e E-mail "automacao_teste.scgpci@dpf.gov.br" para inclusao
    E informo Tipo de Filtro "Para registrar" e Aplicar para "Todas as regras abaixo" para inclusao
    E informo Campo "De, Para, Cc ou Cco:" Condicao "Contiver:" e Descricao "teste" para inclusao
    E clico para Adicionar Filtro para inclusao
    E verifico se ja existe a pasta "teste_pasta_automacao" e se caso tenha realizo a exclusao da mesma
    E clico em Nova Pasta para inclusao
    E preencho o nome da Pasta "teste_pasta_automacao" para inclusao
    E clico para Criar Nova Pasta para inclusao
    E clico para Confirmar Nova Pasta para inclusao
    E clico para salvar Novo Filtro de Mensagem para inclusao
    Entao eu realizo a inclusao de um novo Filtro de Mensagem com sucesso

@consultar_filtro_de_mensagem
Cenario: Consultar Filtro de Mensagem com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Filtro de Mensagem
    E seleciono o Endereco de E-mail "automacao_teste.scgpci@dpf.gov.br" para consultar filtro
    Entao eu realizo a consulta de Filtro de Mensagem com sucesso

@detalhar_filtro_de_mensagem
Cenario: Detalhar Filtro de Mensagem com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Filtro de Mensagem
    E seleciono o Endereco de E-mail "automacao_teste.scgpci@dpf.gov.br" para consultar filtro para detalhamento
    E clico para detalhar o filtro de Nome "filtro_automacao"
    Entao eu realizo o detalhamento do Filtro de Mensagem com sucesso

@editar_filtro_de_mensagem
Cenario: Editar Filtro de Mensagem com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Filtro de Mensagem
    E seleciono o Endereco de E-mail "automacao_teste.scgpci@dpf.gov.br" para consultar filtro para edicao
    E clico para editar o filtro de Nome "filtro_automacao"
    E informo Nome do Filtro "filtro_automacao_editado" e E-mail "teste.scgpci@dpf.gov.br" para edicao
    E informo Tipo de Filtro "Para descartar" e Aplicar para "Pelo menos uma das regras abaixo" para edicao
    E informo Campo "Assunto:" Condicao "Começar:" e Descricao "automacao" para edicao
    E clico para Adicionar Filtro para edicao
    E clico em Nova Pasta para edicao
    E preencho o nome da Pasta "teste_pasta_automacao_nova" para edicao
    E clico para Criar Nova Pasta para edicao
    E clico para Confirmar para edicao
    E seleciono a pasta de nome "teste_pasta_automacao_nova" para edicao
    E preencho o nome da Pasta "tst_automation_new" para renomeacao
    E clico para Renomear para edicao
    E clico para Confirmar Renomeacao para edicao
    E clico para Excluir a Pasta "excluir_pasta" que foi editada
    Entao eu realizo a edicao do Filtro de Mensagem com sucesso

@excluir_filtro_de_mensagem
Cenario: Excluir Filtro de Mensagem com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Filtro de Mensagem
    E seleciono o Endereco de E-mail "automacao_teste.scgpci@dpf.gov.br" para consultar filtro para exclusao
    E clico para excluir o filtro de Nome "filtro_automacao"
    E clico para Excluir o filtro
    E confirmo a exclusao do filtro
    Entao eu realizo a exclusao de Filtro de Mensagem com sucesso
