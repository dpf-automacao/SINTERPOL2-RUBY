Quando("eu entro no menu E-mail e clico no sub-menu Excluidas") do
    @menu = MenuPage.new
    @email_excluidos = EmailExcluidosPage.new
    @menu.menu_email
    @menu.sub_menu_excluidas
end

Quando("informo Unidade {string} para consultar msgs excluidas") do |unidade|
    @email_excluidos.selecionar_unidade_consulta(unidade)
end

Quando("informo Nome da Conta {string} para consultar msgs excluidas") do |nome_da_conta|
    @email_excluidos.selecionar_nome_da_conta_consulta(nome_da_conta)
end

Quando("informo Responsavel pela Exclusao {string} para consultar msgs excluidas") do |responsavel_exclusao|
    @email_excluidos.preencher_responsael_exclusao_consulta(responsavel_exclusao)
end

Quando("informo periodo inicial {string} ate periodo final {string} para consultar msgs excluidas") do |periodo_inicial, periodo_final|
    @email_excluidos.preencher_periodo_inicial_consulta(periodo_inicial)
    @email_excluidos.preencher_periodo_final_consulta(periodo_final)
end

Quando("clico para Pesquisar as mensagens Excluidas") do
    @email_excluidos.pesquisar_msg_excluidas_consulta
end

Entao("eu realizo a Consulta do E-mail Excluido com sucesso") do

end

Quando("informo Unidade {string} para detalhar msgs excluidas") do |unidade|
    @email_excluidos.selecionar_unidade_detalhar(unidade)
end

Quando("informo Nome da Conta {string} para detalhar msgs excluidas") do |nome_da_conta|
    @email_excluidos.selecionar_nome_da_conta_detalhar(nome_da_conta)
end

Quando("informo Responsavel pela Exclusao {string} para detalhar msgs excluidas") do |responsavel_exclusao|
    @email_excluidos.preencher_responsael_exclusao_detalhar(responsavel_exclusao)
end

Quando("informo periodo inicial {string} ate periodo final {string} para detalhar msgs excluidas") do |periodo_inicial, periodo_final|
    @email_excluidos.preencher_periodo_inicial_detalhar(periodo_inicial)
    @email_excluidos.preencher_periodo_final_detalhar(periodo_final)
end

Quando("clico para Pesquisar as mensagens Excluidas para detalhar") do
    @email_excluidos.pesquisar_msg_excluidas_detalhar
end

Quando("clico para Detalhar o Email Excluido para detalhar") do
    @email_excluidos.detalhar_mensagem_excluida
end

Entao("eu realizo O Detalhamento do E-mail Excluido com sucesso") do

end