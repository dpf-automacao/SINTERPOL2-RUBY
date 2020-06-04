#language: pt

@all_configuracoes_sistema

Funcionalidade: Configuracao de Sistema

@configurar_msg_st
Cenario: Configurar Mensagem ST com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Sistema
    E clico para Configurar Mensagem ST
    E informo Unidade de Origem "DCJ/CGCI/DIREX/PF" para mensagem ST
    E informo Unidade de Destino "INTERPOL/CGCI/DIREX/PF" para mensagem ST
    E clico para Configurar mensagem ST novamente
    E clico para Confirmar a Configuracao da Mensagem ST
    Entao eu realizo a Configuracao da Mensagem ST com sucesso

@excluir_msg_st
Cenario: Excluir Mensagem ST com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Sistema
    E clico para Excluir Mensagem ST com Unidade Origem "DCJ/CGCI/DIREX/PF" e Unidade Destino "INTERPOL/CGCI/DIREX/PF"
    E confirmo a Exclusao da Mensagem ST
    Entao eu realizo a Exclusao da Mensagem ST com sucesso

@configurar_valores
Cenario: Configurar Valores com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Sistema
    E clico para Configurar Valores
    E informo Unidade "DCJ/CGCI/DIREX/PF" para configuracao de valores
    E informo Tipo de Registro "Policial" para configuracao de valores
    E informo Sigilo "Ostensivo" para configuracao de valores
    E clico para Configurar Valores novamente
    E confirmo a Configuracao de Valores
    Entao eu realizo a Configuracao de Valores com sucesso

@excluir_conf_vlr
Cenario: Excluir Configuracao de Valores com sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Sistema
    E clico para Excluir Configuracao de Valor da Unidade "DCJ/CGCI/DIREX/PF"
    E confirmo a Exclusao da Configuracao de Valor
    Entao eu realizo a Exclusao de Configuracao de Valores com sucesso