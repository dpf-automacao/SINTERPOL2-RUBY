Quando("acessar o menu Documentos de Viagem {string}") do |tipo_menu|
    @login = LoginPage.new
    @login.acessar_sinterpol(usuario, senha)
    @menu = MenuPage.new
    @menu.selecionar_submenu_registros(tipo_menu)
    @documentosviagempage = DocumentosViagemPage.new

  end

#INCLUIR DOCUMENTO DE VIAGEM
Quando("preencher as informacoes do Documentos de Viagem") do
  
    @documentosviagempage.incluir_documento_viagem

  end
  
  Quando("salvar a inclusão do Documentos de Viagem") do

  end
  
  Entao("vejo a mensagem de confirmação do Documento de viagem") do

  end

#PESQUISAR DOCUMENTO DE VIAGEM
Quando("preencher os parametros do Documentos de Viagem") do                    
    @documentosviagempage.pesquisar_documento_viagem 
  end                                                                             
                                                                                  
  Quando("clicar em pesquisar o Documentos de Viagem") do                         
    
  end                                                                             
                                                                                  
  Entao("vejo o Documento de viagem cadastrado") do                               
      
  end                                                                             


#EXCLUIR DOCUMENTO DE VIAGEM
Entao("eu aciono o botao excluir") do                                        
    
    @documentosviagempage.excluir_documento_viagem
    
  end                                                                          