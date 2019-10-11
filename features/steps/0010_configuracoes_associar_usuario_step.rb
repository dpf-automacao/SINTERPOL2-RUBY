Quando("eu entro no menu Configuracoes e clico no sub-menu Associar Usuario") do 
    @menu = MenuPage.new
    @menu.menu_configuracoes
    @menu.sub_menu_associar_usuario
    @associar_usuario = ConfiguracoesAssociarUsuarioPage.new
end                                                                              
                                                                                
Quando("informo CPF {string} e Nome {string}") do |cpf_usuario, nome_usuario|              
    @associar_usuario.preencher_cpf(cpf_usuario)
    @associar_usuario.preencher_nome(nome_usuario)
end                                                                              
                                                                                
Quando("clico em Pesquisar") do                                                  
    @associar_usuario.pesquisar_usuario
end                                                                              
                                                                                
Entao("eu realizo uma Pesquisa com sucesso") do                                  
 
end                                                                              

Quando("clico para Definir as Iniciais do Usuario") do
    @associar_usuario.definir_iniciais_usuario
end

Quando("preencho as Iniciais {string}") do |iniciais_usuario|
    @associar_usuario.preencher_iniciais(iniciais_usuario)
end

Quando("clico para confirmar Definicao de Iniciais") do
    @associar_usuario.confirmar_definicao_iniciais
end

Entao("eu realizo uma Definicao de Iniciais com sucesso") do

end

Quando("clico para Alterar as Iniciais do Usuario") do
    @associar_usuario.alterar_iniciais_usuario
end

Quando("clico para Confirmar as Alteraroes de Iniciais do Usuario") do
    @associar_usuario.confirmar_alteracao_iniciais
end

Entao("eu realizo uma Alteracao de Iniciais com sucesso") do

end

Quando("clico para Associar Usuario") do
    @associar_usuario.associar_usuario
end

Quando("preencho Sigla para Associacao {string}") do |sigla_associacao|
    @associar_usuario.preencher_sigla_unidade(sigla_associacao)
end

Quando("clico para Associar Unidade") do
    @associar_usuario.confirmar_associacao_unidade
end

Quando("seleciono distribuicao de mensagens e administrador") do
    @associar_usuario.distribuicao_adm_unidade
end

Quando("seleciono Area da Associacao {string}") do |area_associacao|
    @associar_usuario.selecionar_area_usuario(area_associacao)
end

Quando("clico para Associar Area") do
    @associar_usuario.confirmar_associacao_area
end

Entao("eu realizo uma Associacao de Unidade e Area para o Usuario com sucesso") do

end