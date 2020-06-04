Quando("pesquiso o documento no menu {string}") do |tipo_menu|
  @login = LoginPage.new
  @login.acessar_sinterpol(usuario, senha)
  @menu = MenuPage.new
  @menu.selecionar_submenu_registros(tipo_menu)
  @operacoes = OperacoesPage.new
    
  end

#ALTERAR REGISTRO
Quando("selecionar o icone para manipular o documento") do
  @operacoes = OperacoesPage.new
  @operacoes.pesquisar_operacoes
    
end

Entao("eu vejo a tela com o documento em selecionado") do
  @operacoes.alterar_documento_operacoes
   
end


#VINCULAR REGISTRO
Quando("selecionar o icone vincular para manipular o documento") do                    
  @operacoes.pesquisar_operacoes
 
end                                                                                    

Entao("eu vejo a tela de vincular documento") do                                       
  @operacoes.vincular_documento_operacoes

end   


#DESVINCULAR REGISTRO
Quando("selecionar o icone desvincular para manipular o documento") do
  @operacoes.pesquisar_operacoes

end

Entao("eu vejo a tela de desvincular documento") do
  @operacoes.desvincular_documento

end


#ARQUIVAR REGISTRO
Quando("selecionar o icone arquivar para manipular o documento") do
  @operacoes.pesquisar_operacoes

end

Entao("eu vejo a tela de arquivar documento") do
  @operacoes.arquivar_documento_operacoes

end

#DESARQUIVAR REGISTRO
Quando("selecionar o icone desarquivar para manipular o documento") do
  @operacoes.pesquisar_operacoes

end

Entao("eu vejo a tela de desarquivar documento") do
  @operacoes.desarquivar_documento_operacoes

end