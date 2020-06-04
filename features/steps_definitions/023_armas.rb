Quando("acessar o menu armas {string}") do |tipo_menu|
  @login = LoginPage.new
  @login.acessar_sinterpol(usuario, senha)
  @menu = MenuPage.new
  @menu.selecionar_submenu_registros(tipo_menu)
  @armaspage = ArmasPage.new
end

Quando("preencher as informacoes da arma") do
  @armaspage.preencher_arma
end

Quando("salvar a inclusão da arma") do
  
end

Entao("vejo a mensagem de confirmação da arma") do
  
end


#PESQUISAR ARMA
Quando("preencher os parametros de pesquisa da arma") do   
  
  @armaspage.pesquisar_arma
 
  
end                                                                           
                                                                              
Entao("vejo o resultado") do                                                  

  
end


#EXCLUIR ARMA
Quando("preencher os parametros de pesquisa para exclusao") do                
   @armaspage.excluir_arma
end                                                                           
                                                                              
Entao("eu pressiono o botao excluir") do                                      
 
end