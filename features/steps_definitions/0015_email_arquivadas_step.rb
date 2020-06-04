Quando("eu entro no menu E-mail e clico no sub-menu Arquivadas") do
    @menu = MenuPage.new
    @menu.menu_email
    @menu.sub_menu_arquivadas
end

Quando("insiro a Unidade {string} Nome da conta {string} Responsavel {string} Data Inicial ate Data Final") do |und, conta, resp|
    @email_arquivados = EmailArquivadasPage.new
    @email_arquivados.consultar_mensagens_arquivadas(und, conta, resp)
    @email_arquivados.pesquisar_mensagem_arquivada
    @email_arquivados.detalhar_email_arquivado
end

Entao("eu realizo a Consulta do E-mail arquivado com sucesso") do

end