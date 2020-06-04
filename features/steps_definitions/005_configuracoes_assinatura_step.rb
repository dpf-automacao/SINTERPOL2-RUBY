Quando("eu entro no menu Configuracoes e clico no sub-menu Assinatura") do    
    @menu = MenuPage.new
    @assinatura = ConfiguracoesAssinaturaPage.new
    @menu.menu_configuracoes
    @menu.sub_menu_assinatura_usuario
end                                                                           
                                                                            
Quando("clico para Incluir assinatura") do                                    
    @assinatura.incluir_assinatura
end                                                                           
                                                                            
Quando("informo usuario {string} e Unidade {string}") do |usuario_assinatura, unidade_assinatura|    
    @assinatura.preencher_usuario_assinatura(usuario_assinatura)
    @assinatura.preencher_unidade_assinatura(unidade_assinatura)
end                                                                           
                                                                            
Quando("preencho Assinatura {string} e clico para Salvar") do |assinatura|        
    @assinatura.preencher_insercao_assinatura(assinatura)
    @assinatura.salvar_insercao_assinatura
end                                                                           
                                                                            
Entao("eu realizo uma Inclusao de Assinatura com sucesso") do                 

end    

Quando("informo nome do usuario {string} e Unidade {string} para consulta da Assinatura") do |nome_usuario, unidade_usuario|
    @assinatura.preencher_nome_usuario(nome_usuario)
    @assinatura.selecionar_unidade_usuario(unidade_usuario)
end

Quando("seleciono o Tipo de Mensagem {string} com Status {string}") do |tipo_mensagem, status_mensagem|
    @assinatura.selecionar_tipo_mensagem(tipo_mensagem)
    @assinatura.selecionar_status(status_mensagem)
end

Quando("clico para Pesquisar o Usuario que possui Assinatura") do
    @assinatura.pesquisar_assinatura_usuario
end

Quando("clico para Detalhar e Alterar assinatura e Salvo") do
    @assinatura.detalhar_assinatura_e_alterar
end

Entao("eu realizo a Pesquisa do Usuario que possui Assinatura com sucesso") do

end

Entao("eu realizo o Detalhamento e Alteracao de Assinatura com sucesso") do

end

Quando("clico para Alterar assinatura e Salvo") do
    @assinatura.alterar_assinatura
end

Entao("eu realizo a Alteracao de Assinatura com sucesso") do

end

Quando("clico para Excluir e Confirmo") do
    @assinatura.excluir_assinatura
end

Entao("eu realizo a Exclusao de Assinatura com sucesso") do 

end 