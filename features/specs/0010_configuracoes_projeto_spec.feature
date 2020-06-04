#language: pt

@all_configuracoes_projeto

Funcionalidade: Configuracao de Projeto

@incluir_novo_projeto
Cenario: Incluir Projeto com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Projeto
    E clico para Incluir Novo Projeto
    E informo Sigla "INTERPOL/CGCI/DIREX/PF " do Projeto para inclusao
    E informo Nome "Projeto_Automacao" para inclusao
    E informo Codigo "123456789" para inclusao
    E clico para Salvar o Projeto para inclusao
    Entao eu realizo a inclusao de um Novo Projeto com sucesso

@consultar_projeto
Cenario: Consultar projeto com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Projeto
    E informo Codigo "123456789" para consulta
    E informo Nome "Projeto_Automacao" para consulta
    E informo Sigla "INTERPOL/CGCI/DIREX/PF " do Projeto para consulta
    E clico para Pesquisar o Projeto para consulta
    Entao eu realizo a consulta do Projeto com sucesso
    
@editar_projeto
Cenario: Editar projeto com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Projeto
    E informo Codigo "123456789" para edicao
    E informo Nome "Projeto_Automacao" para edicao
    E informo Sigla "INTERPOL/CGCI/DIREX/PF " do Projeto para edicao
    E clico para Pesquisar o Projeto para edicao
    E clico para Editar o Projeto
    E informo Sigla "INTERPOL/CGCI/DIREX/PF " do Projeto para editar
    E informo Nome "AUTOMACAO_TST_NEW" para editar
    E informo Codigo "987654321" para editar
    E clico para Salvar o Projeto para editar
    Entao eu realizo a edicao do Projeto com sucesso

@excluir_projeto
Cenario: Excluir projeto com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Projeto
    E informo Codigo "987654321" para exclusao
    E informo Nome "AUTOMACAO_TST_NEW" para exclusao
    E informo Sigla "INTERPOL/CGCI/DIREX/PF " do Projeto para exclusao
    E clico para Pesquisar o Projeto para exclusao
    E clico para Excluir o Projeto
    Entao eu realizo a exclusao do Projeto com sucesso