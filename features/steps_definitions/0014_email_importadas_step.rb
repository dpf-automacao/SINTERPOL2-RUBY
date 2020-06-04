Quando("eu entro no menu E-mail e clico no sub-menu Importadas") do
    @menu = MenuPage.new
    @email_importadas = EmailImportadasPage.new
    @menu.menu_email
    @menu.sub_menu_importadas
end

Quando("informo Unidade {string} para consultar msgs importadas") do |unidade|
    @email_importadas.selecionar_unidade_consulta(unidade)
end

Quando("informo Nome da Conta {string} para consultar msgs importadas") do |nome_da_conta|
    @email_importadas.selecionar_nome_da_conta_consulta(nome_da_conta)
end

Quando("informo periodo inicial {string} ate periodo final {string} para consultar msgs importadas") do |periodo_inicial, periodo_final|
    @email_importadas.preencher_periodo_inicial_consulta(periodo_inicial)
    @email_importadas.preencher_periodo_final_consulta(periodo_final)
end

Quando("clico para Pesquisar as mensagens Importadas") do
    @email_importadas.pesquisar_msg_importadas_consulta
end

Entao("eu realizo a Consulta do E-mail Importado com sucesso") do

end