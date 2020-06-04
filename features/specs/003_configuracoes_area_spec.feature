#language: pt

@all_configuracoes_area

Funcionalidade: Configuracao de Area

@incluir_nova_area_com_sucesso
Cenario: Incluir nova Area com Sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Area
    E clico para Incluir nova Area
    E preencho Sigla "INTERPOL/CGCI/DIREX/PF"
    E preencho Nome "Teste"
    E preencho Codigo "123456789"
    E clico para Salvar
    E clico para Confirmar
    Entao eu realizo a inclusao de uma nova area com sucesso

@consultar_area_com_sucesso
Cenario: Consultar Area com Sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Area
    E preencho Nome "Teste"
    E preencho Codigo "123456789"
    E preencho Sigla "INTERPOL/CGCI/DIREX/PF"
    E clico para Pesquisar
    Entao eu realizo uma consulta de area com sucesso

@excluir_area_com_sucesso
Cenario: Excluir Area com Sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Area
    E preencho Nome "Teste"
    E preencho Codigo "123456789"
    E preencho Sigla "INTERPOL/CGCI/DIREX/PF"
    E clico para Pesquisar
    E clico para Excluir
    E clico para Confirmar a Exclusao
    E clico para Confirmar o Aviso de Exclusao
    Entao eu realizo uma exclusao de area com sucesso

