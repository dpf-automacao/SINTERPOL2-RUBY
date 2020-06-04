Quando("eu entro no menu Configuracoes e clico no sub-menu Area") do
    @menu = MenuPage.new
    @configuracoes = ConfiguracoesAreaPage.new
    @menu.menu_configuracoes
    @menu.sub_menu_area
end

Quando("clico para Incluir nova Area") do
    sleep(2)
    @configuracoes.incluir_area
end

Quando("preencho Sigla {string}") do |sigla|
    @configuracoes.preencher_sigla(sigla)
end

Quando("preencho Nome {string}") do |nome|
    @configuracoes.preencher_nome(nome)
end

Quando("preencho Codigo {string}") do |codigo|
    @configuracoes.preencher_codigo(codigo)
end

Quando("clico para Salvar") do
    @configuracoes.salvar_inclusao
end

Quando("clico para Confirmar") do
    @configuracoes.confirmacao_de_acao
end

Entao("eu realizo a inclusao de uma nova area com sucesso") do
    

end

Quando("clico para Pesquisar") do
    @configuracoes.pesquisar_area
end

Entao("eu realizo uma consulta de area com sucesso") do

end

Quando("clico para Excluir") do
    @configuracoes.excluir_area
end

Quando("clico para Confirmar a Exclusao") do
    @configuracoes.confirmar_exclusao_area
end

Quando("clico para Confirmar o Aviso de Exclusao") do
    @configuracoes.confirmacao_de_acao
end

Entao("eu realizo uma exclusao de area com sucesso") do

end