Quando("pesquisar um documento no menu {string}") do |tipo_menu|
    @login = LoginPage.new
    @login.acessar_sinterpol(usuario, senha)
    @menu = MenuPage.new
    @menu.selecionar_submenu_registros(tipo_menu)
    @consultar = ConsultarPage.new

  end
  

  #CONSULTAR DOCUMENTO
  Quando("preencher os parametros de pesquisa") do

    @consultar.pesquisar_documento
    page.assert_text(text, 'Operações')
    
  end

    Quando("preencher os campos para realizar pesquisa") do   

      @consultar.consultar_mensagem
      sleep(5)                   
     
    end                                                                          
                                                                                 
    Quando("clicar em pesquisar") do                                             
      
    end                                                                          
                                                                                 
    Entao("vejo o resultado da pesquisa") do                                     
     
    end
  
    #DETALHAR MENSAGEM ST
    Quando("detalhar um documento no menu {string}") do |tipo_menu|
    @login = LoginPage.new
    @login.logar_siseg("barroso.cbm", "ctidpf")
    @menu = MenuPage.new
    @menu.selecionar_submenu_registros(tipo_menu)
    @consultar = ConsultarPage.new

    end

    Quando("preencher os campos para realizar pesquisa da mensagem st") do

     @consultar.detalhar_mensagem_st

    end
    
    Entao("clico em detalhar") do
     
    end