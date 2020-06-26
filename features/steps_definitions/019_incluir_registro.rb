                                                                                         
Quando("entrar no sistema com o usuario {string} e senha {string}") do |usuario, senha| 
  @login = LoginPage.new
  @login.acessar_sinterpol(usuario, senha)
end                                                                                      

Quando("incluir um documento no menu {string}") do |tipo_menu|                          

    @menu = MenuPage.new
    @menu.selecionar_submenu_registros(tipo_menu)
    @documentos = DocumentosRecebidosPage.new
  end                                                                                                   
    
  
 #INCLUIR DOCUMENTO

  Quando("preencher as informacoes do novo documento") do                                               
    @documentos.preencher_inclusao_documento        
  end                                                                                                   
                                                                                                        
  Quando("clicar em salvar") do     
    
    # page.has_text?('elemento')
    # expect(page.has_text?('elemento')).to eq true
                         
  end                                                                                                   
                                                                                                        
  Entao("vejo a mensagem de confirmação") do                                      

  end 
  

  #INCLUIR MENSAGEM ST
  
  Quando("preencher as informacoes da Mensagem ST") do
    @documentos.preencher_inclusao_mensagemst
    sleep(4)
  end