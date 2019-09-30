Quando("eu entro no menu E-mail e clico no sub-menu A Registrar") do

    @menu = MenuPage.new
    @menu.menu_email
    @menu.sub_menu_a_registrar

end

Quando("clico na Caixa de Entrada e seleciono o primeiro registro para detalhar") do

    @email_a_registrar = EmailARegistrarPage.new
    @email_a_registrar.selecionar_caixa_de_entrada
    @email_a_registrar.selecionar_primeiro_registro

end

Quando("clico para arquivar o E-mail") do



end

Entao("eu realizo o Arquivamente do E-mail com sucesso") do

    

end