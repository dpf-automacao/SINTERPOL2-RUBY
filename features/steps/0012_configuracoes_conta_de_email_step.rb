Quando("eu entro no menu Configuracoes e clico no sub-menu Contas de E-mail") do
    @menu = MenuPage.new
    @menu.menu_configuracoes
    @menu.sub_menu_constas_de_email
end                                                                   
                                                                              
Quando("clico para Incluir Conta") do                                         
    @contas_de_email = ConfiguracoesContaDeEmailPage.new
    @contas_de_email.incluir_conta_de_email
end  

Quando("seleciono Envio") do
    
end
                                                                              
Quando("seleciono o Tipo de Mensagem {string}") do |tipo_de_mensagem|                
    @contas_de_email.selecionar_tipo_de_mensagem(tipo_de_mensagem)
end                                                                           
                                                                              
Quando("preencho Nome da Conta {string} e Endereco de E-mail {string}") do |nome_da_conta, endereco_email|    
    @contas_de_email.preencher_nome_conta(nome_da_conta)
    @contas_de_email.preencher_endereco_de_email(endereco_email)
end                                                                           
                                                                              
Quando("seleciono o Tipo de Conta {string}") do |tipo_de_conta|    
    @contas_de_email.selecionar_tipo_de_conta(tipo_de_conta)
end                                                                           
                                                                              
Quando("informo Servidor de entrada de E-mail {string}") do |servidor_de_entrada|          
    @contas_de_email.preencher_servidor_entrada(servidor_de_entrada)
end                                                                           
                                                                              
Quando("informo Servidor de saida de E-mail {string}") do |servidor_de_saida|            
    @contas_de_email.preencher_servidor_saida(servidor_de_saida)
end                                                                           
                                                                              
Quando("informo Nome do Usuario {string}") do |nome_do_usuario|                        
    @contas_de_email.preencher_nome_usuario(nome_do_usuario)
end                                                                           
                                                                              
Quando("informo Senha {string} e Unidade {string}") do |senha, unidade|      
    @contas_de_email.preencher_senha_usuario(senha)
    @contas_de_email.preencher_unidade_usuario(unidade)
end                                                                           
                                                                              
Quando("clico para Testar e clico para Salvar") do                    
    @contas_de_email.testar_conta_email
    @contas_de_email.salvar_conta_de_email
end                                                                           
                                                                              
Entao("eu realizo a inclusao de uma nova Conta de Email com sucesso") do      

end                                                                           