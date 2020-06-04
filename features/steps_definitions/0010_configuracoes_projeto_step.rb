Quando("eu entro no menu Configuracoes e clico no sub-menu Projeto") do
    @menu = MenuPage.new
    @projeto = ConfiguracoesProjetoPage.new
    @menu.menu_configuracoes
    @menu.sub_menu_projeto
end

Quando("clico para Incluir Novo Projeto") do
    @projeto.incluir_projeto
end

Quando("informo Sigla {string} do Projeto para inclusao") do |sigla_unidade|
    @projeto.preencher_sigla_inclusao(sigla_unidade)
end

Quando("informo Nome {string} para inclusao") do |nome_projeto|
    @projeto.preencher_nome_projeto_inclusao(nome_projeto)
end

Quando("informo Codigo {string} para inclusao") do |codigo_projeto|
    @projeto.preencher_codigo_inclusao(codigo_projeto)
end

Quando("clico para Salvar o Projeto para inclusao") do
    @projeto.salvar_projeto_inclusao
end

Entao("eu realizo a inclusao de um Novo Projeto com sucesso") do

end

Quando("clico para Consultar Projeto") do

end

Quando("informo Sigla {string} do Projeto para consulta") do |sigla_unidade|
    @projeto.preencher_sigla_consulta(sigla_unidade)
end

Quando("informo Nome {string} para consulta") do |nome_projeto|
    @projeto.preencher_nome_consulta(nome_projeto)
end

Quando("informo Codigo {string} para consulta") do |codigo_projeto|
    @projeto.preencher_codigo_consulta(codigo_projeto)
end

Quando("clico para Pesquisar o Projeto para consulta") do
    @projeto.pesquisar_projeto_consulta
end

Entao("eu realizo a consulta do Projeto com sucesso") do

end

Quando("informo Codigo {string} para edicao") do |codigo_projeto|
    @projeto.preencher_codigo_edicao(codigo_projeto)
end

Quando("informo Nome {string} para edicao") do |nome_projeto|
    @projeto.preencher_nome_consulta(nome_projeto)
end

Quando("informo Sigla {string} do Projeto para edicao") do |sigla_unidade|
    @projeto.preencher_sigla_consulta(sigla_unidade)
end

Quando("clico para Pesquisar o Projeto para edicao") do
    @projeto.pesquisar_projeto_edicao
end

Quando("clico para Editar o Projeto") do
    @projeto.alterar_projeto
end

Quando("informo Sigla {string} do Projeto para editar") do |sigla_projeto|
    @projeto.preencher_sigla_editar(sigla_projeto)
end

Quando("informo Nome {string} para editar") do |nome_projeto|
    @projeto.preencher_nome_editar(nome_projeto)
end

Quando("informo Codigo {string} para editar") do |codigo_projeto|
    @projeto.preencher_codigo_editar(codigo_projeto)
end

Quando("clico para Salvar o Projeto para editar") do
    @projeto.salvar_projeto_edicao
end

Entao("eu realizo a edicao do Projeto com sucesso") do

end

Quando("informo Codigo {string} para exclusao") do |codigo_projeto|
    @projeto.preencher_codigo_exclusao(codigo_projeto)
end

Quando("informo Nome {string} para exclusao") do |nome_projeto|
    @projeto.preencher_nome_exclusao(nome_projeto)
end

Quando("informo Sigla {string} do Projeto para exclusao") do |sigla_projeto|
    @projeto.preencher_sigla_exclusao(sigla_projeto)
end

Quando("clico para Pesquisar o Projeto para exclusao") do
    @projeto.pesquisar_projeto_exclusao
end

Quando("clico para Excluir o Projeto") do
    @projeto.excluir_projeto
end

Entao("eu realizo a exclusao do Projeto com sucesso") do 

end