Quando("acessar o menu Pessoas {string}") do |tipo_menu|                         
  @login = LoginPage.new
  @login.acessar_sinterpol(usuario, senha)
    @menu = MenuPage.new
    @menu.selecionar_submenu_registros(tipo_menu)
    @pessoaspage = PessoasPage.new

  end    
  
  #INCLUIR PESSOA
  Quando("preencher as informacoes de Pessoas") do                              
   
    @pessoaspage.incluir_pessoa

  end                                                                           
                                                                                
  Quando("salvar a inclusão da Pessoa") do                                      
   


  end                                                                           
                                                                                
  Entao("vejo a mensagem de confirmação da Pessoa") do                          
   


  end
  
  
#PESQUISAR PESSOA
Quando("preencher os parametros de Pessoas") do                               
   
    @pessoaspage.pesquisar_pessoa

  end                                                                           
                                                                                
  Quando("clicar em pesquisar a Pessoa") do                                        

  end                                                                           
                                                                                
  Entao("vejo a Pessoa cadastrada") do                                          
  
  end 
  

#EXCLUIR PESSOA
Entao("eu excluo a Pessoa") do

    @pessoaspage.excluir_pessoa
    

  end