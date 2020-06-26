Quando("entrar no sistema com usuario {string} e senha {string}") do |usuario, senha|
  @login = LoginPage.new
  @login.acessar_sinterpol(usuario, senha)
end

Quando("pesquisar o documento no menu {string}") do |tipo_menu|
    @menu = MenuPage.new
    @menu.selecionar_submenu_registros(tipo_menu)
    
  end


  Quando("detalhar o doc") do
    @detalhar = DetalharPage.new
    @detalhar.pesquisar
  end

  
  #RESPONDER
  Quando("responder o documento") do
    @detalhar.responder_documento
  end
  
  Entao("eu envio a mensagem criada") do
    
  end


  #ALTERAR
  Quando("alterar o documento") do   

    @detalhar.alterar_documento

  end                                                                          
                                                                               
  Entao("eu salvo o documento") do                                             
    
  end     
  

  #VINCULAR
  Quando("vincular o documento") do    
    
    @detalhar.vincular_documento
    
  end                                                                             
                                                                                  
  Entao("eu confirmo a vinculação") do                                            
    
  end

  #DESVINCULAR
  Quando("desvincular o documento") do
    @detalhar.desvincular_documento
  end
  
  Entao("eu confirmo a desvinculação") do
    
  end

  #ARQUIVAR

  Quando("arquivar o documento") do                                            

    @detalhar.arquivar_documento
    
  end                                                                          
                                                                               
  Entao("eu confirmo a arquivação") do                                      
    
  end                                                                          