Quando("eu entro no menu E-mail e clico no sub-menu A Descartar") do
    @menu = MenuPage.new
    @menu.menu_email
    @menu.sub_menu_a_descartar
end

Entao("eu realizo a Consulta do E-mail Descartado com sucesso") do

end