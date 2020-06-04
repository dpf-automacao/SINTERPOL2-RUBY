Quando("eu entro no menu Configuracoes e clico no sub-menu Filtro de Mensagem") do
    @menu = MenuPage.new
    @filtro_de_mensagem = ConfiguracoesFiltroDeMensagemPage.new
    @menu.menu_configuracoes
    @menu.sub_menu_filtros_de_mensagem
end

Quando("clico para Incluir Filtro de Mensagem") do
    @filtro_de_mensagem.incluir_filtro
end

Quando("informo Nome do Filtro {string} e E-mail {string} para inclusao") do |nome_filtro, email_filtro|                       
    @filtro_de_mensagem.preencher_nome_filtro(nome_filtro)
    @filtro_de_mensagem.selecionar_email_filtro(email_filtro)
end                                                                                                                  
                                                                                                                    
Quando("informo Tipo de Filtro {string} e Aplicar para {string} para inclusao") do |tipo_de_filtro, aplicar_para|                 
    @filtro_de_mensagem.selecionar_tipo_filtro(tipo_de_filtro)
    @filtro_de_mensagem.selecionar_aplicar_para(aplicar_para)
end                                                                                                                  
                                                                                                                    
Quando("informo Campo {string} Condicao {string} e Descricao {string} para inclusao") do |campo, condicao, descricao|  
    @filtro_de_mensagem.selecionar_campo(campo)
    @filtro_de_mensagem.selecionar_condicao(condicao)
    @filtro_de_mensagem.selecionar_descricao(descricao)
end                                                                                                                  
                                                                                                                    
Quando("clico para Adicionar Filtro para inclusao") do                                                               
    @filtro_de_mensagem.adicionar_filtro        
end    

Quando("verifico se ja existe a pasta {string} e se caso tenha realizo a exclusao da mesma") do |nome_pasta|
    @filtro_de_mensagem.excluir_pasta(nome_pasta)
end
                                                                                                                    
Quando("clico em Nova Pasta para inclusao") do                                                            
    @filtro_de_mensagem.nova_pasta      
end                                                                                                                  
                                                                                                                    
Quando("preencho o nome da Pasta {string} para inclusao") do |nome_pasta|                                             
    @filtro_de_mensagem.preencher_nome_da_pasta(nome_pasta)
end                                                                                                                  
                                                                                                                    
Quando("clico para Criar Nova Pasta para inclusao") do                                                               
    @filtro_de_mensagem.criar_nova_pasta              
end                                                                                                                  
                                                                                                                    
Quando("clico para Confirmar Nova Pasta para inclusao") do                                                         
    @filtro_de_mensagem.confirmar_pasta
end                                                                                                                  
                                                                                                                    
Quando("clico para salvar Novo Filtro de Mensagem para inclusao") do                                                 
    @filtro_de_mensagem.salvar_nova_pasta 
end                                                                                                                  
                                                                                                                    
Entao("eu realizo a inclusao de um novo Filtro de Mensagem com sucesso") do                                          
                                    
end                                                                                                                  
                                                                                                                    
Quando("seleciono o Endereco de E-mail {string} para consultar filtro") do |endereco_email|                                  
    @filtro_de_mensagem.selecionar_email_consulta(endereco_email)                                
end                                                                                                                  
                                                                                                                    
Entao("eu realizo a consulta de Filtro de Mensagem com sucesso") do                                                  
                                       
end                                                                                                                  
                                                                                                                    
Quando("seleciono o Endereco de E-mail {string} para consultar filtro para detalhamento") do |endereco_email|                
    @filtro_de_mensagem.selecionar_email_consulta(endereco_email)                                  
end                                                                                                                  
                                                                                                                    
Quando("clico para detalhar o filtro de Nome {string}") do |nome_filtro|                                                  
    @filtro_de_mensagem.detalhar_filtro(nome_filtro)
end                                                                                                                  
                                                                                                                    
Entao("eu realizo o detalhamento do Filtro de Mensagem com sucesso") do                                              
                                  
end                                                                                                                  
                                                                                                                    
Quando("seleciono o Endereco de E-mail {string} para consultar filtro para edicao") do |endereco_email|                      
    @filtro_de_mensagem.selecionar_email_consulta(endereco_email)                              
end                                                                                                                  
                                                                                                                    
Quando("clico para editar o filtro de Nome {string}") do |nome_filtro|                                                    
    @filtro_de_mensagem.editar_filtro(nome_filtro)                       
end                                                                                                                  
                                                                                                                    
Quando("informo Nome do Filtro {string} e E-mail {string} para edicao") do |nome_filtro, email_filtro|                         
    @filtro_de_mensagem.preencher_nome_filtro(nome_filtro)
    @filtro_de_mensagem.selecionar_email_filtro(email_filtro)                            
end                                                                                                                  
                                                                                                                    
Quando("informo Tipo de Filtro {string} e Aplicar para {string} para edicao") do |tipo_filtro, aplicar_para|                   
    @filtro_de_mensagem.selecionar_tipo_filtro(tipo_filtro)
    @filtro_de_mensagem.selecionar_aplicar_para(aplicar_para)                                  
end                                                                                                                  
                                                                                                                    
Quando("informo Campo {string} Condicao {string} e Descricao {string} para edicao") do |campo, condicao, descricao|    
    @filtro_de_mensagem.selecionar_campo(campo)
    @filtro_de_mensagem.selecionar_condicao(condicao)
    @filtro_de_mensagem.selecionar_descricao(descricao)                               
end                                                                                                                  
                                                                                                                    
Quando("clico para Adicionar Filtro para edicao") do                                                                 
    @filtro_de_mensagem.adicionar_filtro                                
end                                                                                                                  
                                                                                                                    
Quando("clico em Nova Pasta para edicao") do  
    @filtro_de_mensagem.nova_pasta                               
end     
                                                                                                                    
Quando("preencho o nome da Pasta {string} para edicao") do |nome_pasta|
    @filtro_de_mensagem.preencher_nome_da_pasta(nome_pasta)
end                                                                                                         
                                                                                                                    
Quando("clico para Criar Nova Pasta para edicao") do                                                                 
    @filtro_de_mensagem.criar_nova_pasta                                                  
end                                                                                                                  
                                                                                                                    
Quando("clico para Confirmar para edicao") do                                                                        
    @filtro_de_mensagem.confirmar_pasta
end    

Quando("seleciono a pasta de nome {string} para edicao") do |nome_pasta|                                                 
    @filtro_de_mensagem.selecionar_pasta_edicao(nome_pasta)
    @filtro_de_mensagem.renomear_pasta_edicao                             
end   

Quando("preencho o nome da Pasta {string} para renomeacao") do |nome_pasta_renomeada|                                                  
    @filtro_de_mensagem.preencher_renomeacao_pasta(nome_pasta_renomeada)              
end
                                                                                                                    
Quando("clico para Renomear para edicao") do                                                                         
    @filtro_de_mensagem.renomear_edicao
end                                                                                                                  
                                                                                                                    
Quando("clico para Confirmar Renomeacao para edicao") do                                                             
    @filtro_de_mensagem.confirmar_renomeacao_pasta_edicao                      
end                                                                                                                  
                                                                                                                    
Quando("clico para Excluir a Pasta {string} que foi editada") do |nome_pasta|                                                                
    @filtro_de_mensagem.excluir_pasta(nome_pasta)                   
end                                                                                                                  
                                                                                                                    
Entao("eu realizo a edicao do Filtro de Mensagem com sucesso") do                                                    
                                     
end            

Quando("seleciono o Endereco de E-mail {string} para consultar filtro para exclusao") do |endereco_email|
    @filtro_de_mensagem.selecionar_email_consulta(endereco_email)
end

Quando("clico para excluir o filtro de Nome {string}") do |nome_filtro|
    @filtro_de_mensagem.excluir_filtro(nome_filtro)
end

Quando("clico para Excluir o filtro") do
    @filtro_de_mensagem.excluir_filtro_mensagem
end

Quando("confirmo a exclusao do filtro") do
    @filtro_de_mensagem.confirmar_exclusao_filtro
end

Entao("eu realizo a exclusao de Filtro de Mensagem com sucesso") do

end