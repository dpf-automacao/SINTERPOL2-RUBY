#language: pt

@all
Funcionalidade: Procedimentos do menu E-mail (SUBMENU A REGISTRAR)

@arquivar_email_com_sucesso
Cenario: Arquivar E-mail com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu A Registrar
    E clico na Caixa de Entrada e seleciono o primeiro registro para detalhar
    E clico para arquivar o E-mail
    Entao Arquivo o E-mail com sucesso

@encaminhar_email_com_sucesso
@tst012
Cenario: Encaminhar E-mail com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu A Registrar
    E clico na Caixa de Entrada e seleciono o primeiro registro para detalhar
    E clico para encaminhar o E-mail 
    E seleciono a opcao de encaminhamento de "Email"
    E seleciono De "teste.scgpci@dpf.gov.br" para o E-mail "testerjuniordpf@gmail.com"
    E informo o Assunto "ENC: Titulo: Encaminhamento de E-mail gerado por automação de Teste"
    E informo a Mensagem "Corpo do texto: Encaminhamento de E-mail gerado por automação de Teste"
    E clico para encaminhar o E-mail com as informacoes
    Entao eu Encaminho o E-mail com sucesso

@registrar_email_com_sucesso
Cenario: Registrar E-mail com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu A Registrar
    E clico na Caixa de Entrada e seleciono o primeiro registro para detalhar
    E clico para registrar o E-mail 
    E preencho Numero ou Referencia "123" do documento e o Tipo do Documento "E-mail"
    E preencho Origem "Brasília", Pais de Origem "Brasil", UF de Origem "DF" Projeto "SELOG"
    E preencho Sigilo "Ostensivo" e Tipo de Registro "Policial" e Prazo "Urgente"
    E preencho Assunto "Assunto qualquer gerado por teste automatizado"
    E preencho Conteudo "Conteudo qualquer gerado por teste automatizado"
    E clico para Adicionar Arquivo
    Entao eu Registro o E-mail com sucesso

@nao_registrar_email_com_sucesso
Cenario: Nao Registrar E-mail com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu A Registrar
    E clico na Caixa de Entrada e seleciono o primeiro registro para detalhar
    E clico para nao registrar o E-mail e confirmo
    Entao eu Nao Registro o E-mail com sucesso

@mover_de_email_com_sucesso
Cenario: Mover E-mail com sucesso
Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu E-mail e clico no sub-menu A Registrar
    E clico na Caixa de Entrada e seleciono o primeiro registro para detalhar
    E clico para mover o E-mail 
    E informo a Pasta ""
    Entao eu movo o E-mail com sucesso

