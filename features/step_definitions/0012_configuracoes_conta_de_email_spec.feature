#language: pt

@all_configuracoes_conta_de_email

Funcionalidade: Realizar Configuracao de Conta de Email

@incluir_nova_conta_de_email_com_sucesso
Cenario: Incluir nova Conta de Email com Sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Contas de E-mail
    E clico para Incluir Conta
    E seleciono Envio
    E seleciono o Tipo de Mensagem "E-mail"
    E preencho Nome da Conta "teste_prehom" e Endereco de E-mail "teste.scgpci@dpf.gov.br"
    E seleciono o Tipo de Conta "POP3"
    E informo Servidor de entrada de E-mail "mail.dpf.gov.br"
    E informo Servidor de saida de E-mail "mail.dpf.gov.br"
    E informo Nome do Usuario "teste_prehom"
    E informo Senha "Cgtidpf2016" e Unidade "INTERPOL/CGCI/DIREX/PF"
    E clico para Testar e clico para Salvar
    Entao eu realizo a inclusao de uma nova Conta de Email com sucesso

