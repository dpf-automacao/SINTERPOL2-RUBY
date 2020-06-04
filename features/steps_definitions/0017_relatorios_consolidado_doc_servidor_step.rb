Quando("eu entro no menu Relatorios e clico no sub-menu Consolidado de Documentos") do
    @menu = MenuPage.new
    @relatorios_consolidados = RelatoriosConsolidadoDocServidorPage.new
    @menu.menu_relatorios
    @menu.sub_menu_consolidado_de_doc
end

Quando("informo Unidade {string} para Relatorio Consolidado") do |unidade|
    @relatorios_consolidados.selecionar_unidade(unidade)
end

Quando("clico para Gerar o Relatorio Consolidado por Documentos") do
    @relatorios_consolidados.gerar_relatorio_consolidado
end

Entao("eu realizo a geracao do relatorio consolidado com insucesso") do

end