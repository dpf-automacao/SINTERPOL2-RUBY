#language: pt

@all_configuracoes_assinatura

Funcionalidade: Configuracao de Associacao

@incluir_assinatura_com_sucesso
Cenario: Incluir Assinatura para usuario com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Assinatura
    E clico para Incluir assinatura
    E informo usuario "CARLOS BARROSO MARTINS" e Unidade "INTERPOL/CGCI/DIREX/PF"
    E preencho Assinatura "XPTO" e clico para Salvar
    Entao eu realizo uma Inclusao de Assinatura com sucesso

@consultar_assinatura_com_sucesso
Cenario: Consultar assinatura de usuario com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Assinatura
    E informo nome do usuario "CARLOS BARROSO MARTINS" e Unidade "INTERPOL/CGCI/DIREX/PF" para consulta da Assinatura
    E seleciono o Tipo de Mensagem "Correio Eletronico" com Status "Ativa"
    E clico para Pesquisar o Usuario que possui Assinatura
    Entao eu realizo a Pesquisa do Usuario que possui Assinatura com sucesso

@detalhar_e_alterar_assinatura_com_sucesso
Cenario: Detalhar e Alterar assinatura de usuario com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Assinatura
    E informo nome do usuario "CARLOS BARROSO MARTINS" e Unidade "INTERPOL/CGCI/DIREX/PF" para consulta da Assinatura
    E seleciono o Tipo de Mensagem "Correio Eletronico" com Status "Ativa"
    E clico para Pesquisar o Usuario que possui Assinatura
    E clico para Detalhar e Alterar assinatura e Salvo
    Entao eu realizo o Detalhamento e Alteracao de Assinatura com sucesso
    
@alterar_assinatura_com_sucesso
Cenario: Alterar assinatura de usuario com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Assinatura
    E informo nome do usuario "CARLOS BARROSO MARTINS" e Unidade "INTERPOL/CGCI/DIREX/PF" para consulta da Assinatura
    E seleciono o Tipo de Mensagem "Correio Eletronico" com Status "Ativa"
    E clico para Pesquisar o Usuario que possui Assinatura
    E clico para Alterar assinatura e Salvo
    Entao eu realizo a Alteracao de Assinatura com sucesso

@excluir_assinatura_com_sucesso
Cenario: Excluir assinatura de usuario com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Assinatura
    E informo nome do usuario "CARLOS BARROSO MARTINS" e Unidade "INTERPOL/CGCI/DIREX/PF" para consulta da Assinatura
    E seleciono o Tipo de Mensagem "Correio Eletronico" com Status "Ativa"
    E clico para Pesquisar o Usuario que possui Assinatura
    E clico para Excluir e Confirmo
    Entao eu realizo a Exclusao de Assinatura com sucesso