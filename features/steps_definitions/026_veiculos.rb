Quando("acessar o menu Veículos {string}") do |tipo_menu|                         
  @login = LoginPage.new
  @login.acessar_sinterpol(usuario, senha)
    @menu = MenuPage.new
    @menu.selecionar_submenu_registros(tipo_menu)
    @veiculospage = VeiculosPage.new
    
    
  end                                                                            
   
  #INCLUIR VEICULO
  Quando("preencher as informacoes do Veículo") do    
    @veiculospage.incluir_veiculo                           
   
  end                                                                            
                                                                                 
  Quando("salvar a inclusão do Veículo") do                                       

  end                                                                            
                                                                                 
  Entao("vejo a mensagem de confirmação do Veículo") do                          

  end
  

  #PESQUISAR VEÍCULO
  Quando("preencher os parametros do Veículo") do
    
    @veiculospage.pesquisar_veiculo


  end
  
  Quando("clicar em pesquisar o Veículo") do
   
  end
  
  Entao("vejo o Veículo cadastrado") do
  
  end


#EXCLUIR VEÍCULO
Entao("eu aciono o botao excluir para excluir o Veículo") do
    
    @veiculospage.excluir_veiculo

  end