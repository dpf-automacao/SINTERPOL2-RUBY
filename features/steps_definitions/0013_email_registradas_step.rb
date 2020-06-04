Quando("eu entro no menu E-mail e clico no sub-menu Registradas") do
    @menu = MenuPage.new
    @email_registradas = EmailRegistradasPage.new
    @menu.menu_email
    @menu.sub_menu_registradas
end

Quando("informo Unidade {string} para consultar msgs registradas") do |unidade|
    @email_registradas.selecionar_unidade_consulta(unidade)
end

Quando("informo Nome da Conta {string} para consultar msgs registradas") do |nome_da_conta|
    @email_registradas.selecionar_nome_da_conta_consulta(nome_da_conta)
end

Quando("informo Responsavel pelo Registro {string} para consultar msgs registradas") do |responsavel_registro|
    @email_registradas.preencher_responsael_registro_consulta(responsavel_registro)
end

Quando("informo periodo inicial {string} ate periodo final {string} para consultar msgs registradas") do |periodo_inicial, periodo_final|
    @email_registradas.preencher_periodo_inicial_consulta(periodo_inicial)
    @email_registradas.preencher_periodo_final_consulta(periodo_final)
end

Quando("clico para Pesquisar as mensagens Registradas") do
    @email_registradas.pesquisar_msg_registradas_consulta
end

Entao("eu realizo a Consulta do E-mail Registrado com sucesso") do

end

Quando("informo Unidade {string} para detalhar msgs registradas") do |unidade|
    @email_registradas.selecionar_unidade_detalhar(unidade)
end

Quando("informo Nome da Conta {string} para detalhar msgs registradas") do |nome_da_conta|
    @email_registradas.selecionar_nome_da_conta_detalhar(nome_da_conta)
end

Quando("informo Responsavel pelo Registro {string} para detalhar msgs registradas") do |responsavel_registro|
    @email_registradas.preencher_responsavel_registro_detalhar(responsavel_registro)
end

Quando("informo periodo inicial {string} ate periodo final {string} para detalhar msgs registradas") do |periodo_inicial, periodo_final|
    @email_registradas.preencher_periodo_inicial_detalhar(periodo_inicial)
    @email_registradas.preencher_periodo_final_detalhar(periodo_final)
end

Quando("clico para Pesquisar as mensagens Registradas para detalhar") do
    @email_registradas.pesquisar_msg_registradas_detalhar
end

Quando("clico para Detalhar o Email Registrado para detalhar") do
    @email_registradas.detalhar_mensagem_registrada
end

Entao("eu realizo O Detalhamento do E-mail Registrado com sucesso") do

end