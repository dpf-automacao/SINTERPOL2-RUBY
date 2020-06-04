Quando("eu pesquisar um documento") do                                        
    @login = LoginPage.new
    @login.acessar_sinterpol(usuario, senha)
    @tramites_operacoes = TramitesOperacoesPage.new    
end  

#TELA TRAMITES
Quando("clicar no botão tramites") do
   @tramites_operacoes.pesquisar_documento_tramites
end

#RESPONDER
Quando("responder") do
    @tramites_operacoes.responder_novo_tramites
end
  
Entao("eu vejo a tela com a mensagem criada") do
   
end

#ARQUIVAR
Quando("arquivar") do    
    @tramites_operacoes.pesquisar_documento_tramites  
    @tramites_operacoes.arquivar_novo_tramites                                                            
end                                                                                   
                                                                                      
Entao("eu vejo a tela de arquivamento do tramite") do                                 
     
end                                                                                   
 
#DESARQUIVAR
Quando("desarquivar") do   
    @tramites_operacoes.pesquisar_documento_tramites   
    @tramites_operacoes.desarquivar_novo_tramites                                                          
end                                                                                   
                                                                                      
Entao("eu vejo a tela de desarquivamento do tramite") do                              
    
end

#TRAMITAR
Quando("clicar no botão tramitar") do                                            
    @tramites_operacoes.pesquisar_documento_tramites
    @tramites_operacoes.tramitar_novo_tramites
end                                                                              
                                                                                   
Entao("eu vejo a tela de tramitação do tramite") do                              
  
end                                                                              
                                                                                   
                                                                                    
                                                                                        