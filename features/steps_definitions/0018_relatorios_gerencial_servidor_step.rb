Quando("eu entro no menu Relatorios e clico no sub-menu Gerencial por Servidor") do
    @menu = MenuPage.new
    @relatorio_gerencial = RelatoriosGerencialServidorPage.new
    @menu.menu_relatorios
    @menu.sub_menu_gerencial_por_servidor
end

Quando("informo Unidade {string} para Relatorio Gerencial") do |unidade|
    @relatorio_gerencial.selecionar_unidade(unidade)
end

Quando("informo Periodo {string} ate {string}") do |periodo_inicial, periodo_final|
    @relatorio_gerencial.preencher_periodo_inicial(periodo_inicial)
    @relatorio_gerencial.preencher_periodo_final(periodo_final)
end

Quando("clico para Gerar o Relatorio Gerencial") do
    @relatorio_gerencial.gerar_relatorio_gerencial
end

Entao("eu realizo a geracao do relatorio gerencial com sucesso") do

end