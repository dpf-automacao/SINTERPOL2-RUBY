#language: pt

@all_configuracoes_associar_usuario

Funcionalidade: Realizar Configuracao de Area

@pesquisar_usuario_com_sucesso
Cenario: Incluir nova Area com Sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Associar Usuario
    E informo CPF "885.843.131-68" e Nome "RENATO BATISTA GUEDES"
    E clico em Pesquisar
    Entao eu realizo uma Pesquisa com sucesso

@definir_iniciais_usuario_com_sucesso
Cenario: Definir Iniciais do Usuario com Sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Associar Usuario
    E informo CPF "639.079.922-53" e Nome "ADAIR JOSE DA SILVA"
    E clico em Pesquisar
    E clico para Definir as Iniciais do Usuario
    E preencho as Iniciais "AJDS"
    E clico para confirmar Definicao de Iniciais
    Entao eu realizo uma Definicao de Iniciais com sucesso

@alterar_iniciais_usuario_com_sucesso
Cenario: Alterar Iniciais do Usuario com Sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Associar Usuario
    E informo CPF "639.079.922-53" e Nome "ADAIR JOSE DA SILVA"
    E clico em Pesquisar
    E clico para Alterar as Iniciais do Usuario
    E preencho as Iniciais "ACCCC"
    E clico para Confirmar as Alteraroes de Iniciais do Usuario
    Entao eu realizo uma Alteracao de Iniciais com sucesso

@associar_usuario_com_sucesso
Cenario: Associar Usuario com Sucesso
    Quando eu informo login "barroso.cbm" e senha "ctidpf" clico para Acessar e seleciono Sinterpol
    E eu entro no menu Configuracoes e clico no sub-menu Associar Usuario
    E informo CPF "639.079.922-53" e Nome "ADAIR JOSE DA SILVA"
    E clico em Pesquisar
    E clico para Associar Usuario
    E preencho Sigla para Associacao "INTERPOL/CGCI/DIREX/PF"
    E clico para Associar Unidade
    E seleciono distribuicao de mensagens e administrador
    E seleciono Area da Associacao "PAPILOSCOPISTA"
    E clico para Associar Area
    Entao eu realizo uma Associacao de Unidade e Area para o Usuario com sucesso




