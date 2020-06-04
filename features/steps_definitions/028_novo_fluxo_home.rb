                                                                             
Quando("eu pesquisar um documento na tela home") do     
  @login = LoginPage.new
  @login.acessar_sinterpol(usuario, senha)
  @novo_home = NovoHomePage.new                     
  
end      

#RESPONDER                                                                   
Quando("for detalhar e responder o documento") do                            
    @novo_home.pesquisar_documento_novo_home
    @novo_home.responder_novo_home
end                                                                          
                                                                             
Entao("eu vejo o formulário de resposta") do                                 
 
end


#VINCULAR
Quando("for detalhar e vincular o documento") do     
 @novo_home.pesquisar_documento_novo_home                          
 @novo_home.vincular_novo_home

end                                                                            
                                                                               
Entao("eu vejo a tela de vinculação") do                                       
  
end     


#DESVINCULAR
Quando("for detalhar e desvincular o documento") do
  @novo_home.pesquisar_documento_novo_home
  @novo_home.desvincular_novo_home
  
end

Entao("eu vejo a tela de desvinculação") do


end


#ARQUIVAR
Quando("for detalhar e arquivar o documento") do                                
  @novo_home.pesquisar_documento_novo_home
  @novo_home.arquivar_novo_home

end                                                                             
                                                                                
Entao("eu vejo a tela de arquivamento") do                                      

end


#DESARQUIVAR
Quando("for detalhar e desarquivar o documento") do                           
  @novo_home.pesquisar_documento_novo_home
  @novo_home.desarquivar_novo_home

end                                                                           
                                                                              
Entao("eu vejo a tela de desarquivamento") do                                 

end  

#TRAMITAR
Quando("for detalhar e tramitar o documento") do                                
  @novo_home.pesquisar_documento_novo_home
  @novo_home.tramitar_novo_home

end                                                                             
                                                                                
Entao("eu vejo a tela de tramitação") do                                        


end   

#TRAMITES CRIAR CÓPIA
Quando("clicar em tramites") do
  @novo_home.pesquisar_documento_novo_home
end

Quando("criar copia") do
  @novo_home.criar_copia_documento_home
end

Entao("eu crio uma copia do documento") do
 
end
                                                                             
                                                                              