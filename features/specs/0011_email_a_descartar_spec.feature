#language: pt

Funcionalidade: Procedimentos do menu E-mail (SUBMENU A DESCARTAR)

@consultar_email_descartado_com_sucesso
Cenario: Consultar E-mail Descartado com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu A Descartar
    E clico na Caixa de Entrada e seleciono o primeiro registro para detalhar
    Entao eu realizo a Consulta do E-mail Descartado com sucesso

@arquivar_email_descartado_com_sucesso
Cenario: Arquivar E-mail Descartado com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu A Descartar
    E clico na Caixa de Entrada e seleciono o primeiro registro para detalhar
    E clico para arquivar o E-mail
    Entao eu realizo a Consulta do E-mail Descartado com sucesso

@solicitar_registro_email_descartado_com_sucesso
Cenario: Solicitar Registro de E-mail Descartado com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu A Descartar
    E clico na Caixa de Entrada e seleciono o primeiro registro para detalhar
    E clico para encaminhar o E-mail
    E seleciono a Unidade 
    Entao eu realizo a Consulta do E-mail Descartado com sucesso

@excluir_email_descartado_com_sucesso
Cenario: Excluir E-mail Descartado com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu A Descartar
    E clico na Caixa de Entrada e seleciono o primeiro registro para detalhar
    Entao eu realizo a Consulta do E-mail Descartado com sucesso