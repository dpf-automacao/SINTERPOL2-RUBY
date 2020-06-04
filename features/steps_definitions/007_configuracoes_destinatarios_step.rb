Quando("eu entro no menu Configuracoes e clico no sub-menu Destinatarios") do
    @menu = MenuPage.new
    @destinatarios = ConfiguracoesDestinatariosPage.new
    @menu.menu_configuracoes
    @menu.sub_menu_destinatarios
end

Quando("clico para Incluir Destinatario") do
    @destinatarios.incluir_destinatario
end

Quando("seleciono {string} para inclusao de Destinatario") do |tipo_email|
    @destinatarios.selecionar_tipo_email_cadastro(tipo_email)
end

Quando("preencho Endereco de Email {string} para inclusao de Destinatario") do |endereco_email|
    @destinatarios.preencher_endereco_email_cadastro(endereco_email)
end

Quando("preencho Descricao {string} para inclusao de Destinatario") do |descricao_email|
    @destinatarios.preencher_descricao_cadastro(descricao_email)
end

Quando("seleciono Pais {string} e estado {string} para inclusao de Destinatario") do |pais, estado|
    @destinatarios.selecionar_pais_cadastro(pais)
    @destinatarios.selecionar_estado_cadastro(pais, estado)
end

Quando("clico para Salvar a inclusao de Destinatario") do
    @destinatarios.salvar_destinatario_cadastro
end

Entao("eu realizo a inclusao de um novo destinatario com sucesso") do

end

Quando("seleciono {string} para consulta de Destinatario") do |tipo_email|                                 
    @destinatarios.selecionar_tipo_email_consulta(tipo_email)                 
end                                                                                                    
                                                                                                        
Quando("preencho Endereco de Email {string} para consulta de Destinatario") do |endereco_email|                
    @destinatarios.preencher_endereco_email_consulta(endereco_email)         
end                                                                                                    
                                                                                                        
Quando("preencho Descricao {string} para consulta de Destinatario") do |descricao_email|                        
    @destinatarios.preencher_descricao_consulta(descricao_email)                   
end                                                                                                    
                                                                                                        
Quando("clico para Pesquisar o Destinatario") do
    @destinatarios.pesquisar_destinatario
end

Entao("eu realizo a consulta de um destinatario com sucesso") do

end

Quando("clico para Editar Destinatario") do
    @destinatarios.editar_destinatario
end

Quando("seleciono {string} para edicao de Destinatario") do |tipo_email|
    @destinatarios.selecionar_tipo_email_edicao(tipo_email)
end

Quando("preencho Endereco de Email {string} para edicao de Destinatario") do |endereco_email|
    @destinatarios.preencher_endereco_email_edicao(endereco_email)
end

Quando("preencho Descricao {string} para edicao de Destinatario") do |descricao_email|
    @destinatarios.preencher_descricao_edicao(descricao_email)
end

Quando("seleciono Pais {string} e estado {string} para edicao de Destinatario") do |pais, estado|
    @destinatarios.selecionar_pais_edicao(pais)
    @destinatarios.selecionar_estado_edicao(pais, estado)
end

Quando("clico para Salvar a edicao de Destinatario") do
    @destinatarios.salvar_destinatario_edicao
end

Entao("eu realizo a edicao de um destinatario com sucesso") do

end

Quando("clico para Excluir Destinario") do
    @destinatarios.excluir_destinatario
end

Entao("eu realizo a exclusao de um destinatario com sucesso") do

end
                                                                                               