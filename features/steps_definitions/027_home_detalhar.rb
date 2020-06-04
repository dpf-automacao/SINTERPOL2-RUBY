Quando("pesquisar um documento na tela home") do
  @login = LoginPage.new
    @login.acessar_sinterpol(usuario, senha)
  @detalhar_home = DetalharHomepage.new

  end
  
  Quando("detalhar") do
    @detalhar_home.pesquisar_documento_home
    
  end
  
  Entao("vejo as opções da tela detalhar") do
 
  end

  #RESPONDER DOCUMENTO

  Quando("detalhar e responder o documento") do
    
    @detalhar_home.pesquisar_documento_home

  end
  
  Entao("vejo o formulário de resposta") do
   
    @detalhar_home.responder_home

  end


  #ALTERAR DOCUMENTO

  Quando("detalhar e alterar o documento") do  
    
    @detalhar_home.pesquisar_documento_home
    
  end                                                                           
                                                                                
  Entao("vejo o formulário de alteracao") do                                    
   
    @detalhar_home.alterar_home

  end
  
  
  Quando("detalhar e vincular o documento") do
   
    @detalhar_home.pesquisar_documento_home

  end


  #VINCULAR DOCUMENTO
  
  Entao("vejo a tela de vinculacao") do
  
    @detalhar_home.vincular_home

  end



  #DESVINCULAR DOCUMENTO

  Quando("detalhar e desvincular o documento") do
    
    @detalhar_home.pesquisar_documento_home

  end
  
  Entao("vejo a tela de desvinculacao") do
    
    @detalhar_home.desvincular_home

  end

  #ARQUIVAR DOCUMENTO

  Quando("detalhar e arquivar o documento") do
   
    @detalhar_home.pesquisar_documento_home

  end
  
  Entao("vejo a tela de arquivamento") do
  
    @detalhar_home.arquivar_home

  end

  #DESARQUIVAR DOCUMENTO

  Quando("detalhar e desarquivar o documento") do                                
  
    @detalhar_home.pesquisar_documento_home

  end                                                                            
                                                                                 
  Entao("vejo a tela de desarquivamento") do                                     
  
    @detalhar_home.desarquivar_home

  end                                                                            
  

  #TRAMITAR DOCUMENTO

  Quando("detalhar e tramitar") do                                              

  end                                                                           
                                                                                
  Entao("vejo a tela de tramitacao") do                                         
  @detalhar_home.tramitar_home
  end
  
  
#CRIAR CÓPIA

  Quando("detalhar e clicar em tramites") do                                    
   
    @detalhar_home.pesquisar_documento_home
  end                                                                           
                                                                                
  Entao("clico em criar copia") do                                              
    
   @detalhar_home.criar_copia_documento
  end                                                                           
                                                                                