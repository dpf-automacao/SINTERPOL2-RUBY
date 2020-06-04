Quando("eu entro no menu E-mail e clico no sub-menu A Registrar") do
    @menu = MenuPage.new
    @email_a_registrar = EmailARegistrarPage.new
    @menu.menu_email
    @menu.sub_menu_a_registrar
    @email_a_registrar.receber_emails
end

Quando("clico na Caixa de Entrada e seleciono o primeiro registro para detalhar") do
    @email_a_registrar.selecionar_caixa_de_entrada
    @email_a_registrar.selecionar_primeiro_registro
end

Quando("clico para arquivar o E-mail") do
    @email_a_registrar.arquivar_email
end

Entao("Arquivo o E-mail com sucesso") do
    
end                                                                        
                                                                                                
Quando("clico para encaminhar o E-mail") do                                                      
    @email_a_registrar.encaminhar_email
end                                                                                              
                                                                                                
Quando("seleciono a opcao de encaminhamento de {string}") do |tipo_encaminhamento|                            
    @email_a_registrar.escolher_opcao_encaminhamento(tipo_encaminhamento)
end                                                                                              
                                                                                                
Quando("seleciono De {string} para o E-mail {string}") do |string, string2|                      
    
end                                                                                              
                                                                                                
Quando("informo o Assunto {string}") do |string|                                                 
    
end                                                                                              
                                                                                                
Quando("informo a Mensagem {string}") do |string|                                                
    
end                                                                                              
                                                                                                
Quando("clico para encaminhar o E-mail com as informacoes") do                                   
    
end                                                                                              
                                                                                                
Entao("eu Encaminho o E-mail com sucesso") do                                                    
    
end                                                                                              