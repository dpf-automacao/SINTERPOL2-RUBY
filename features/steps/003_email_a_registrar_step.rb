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
    @email_a_registrar.arquivar_email
    @email_a_registrar.confirmar
end

Entao("Arquivo o E-mail com sucesso") do

end

Quando("clico para encaminhar o E-mail") do                                   
    @email_a_registrar.encaminhar_email
end     

Quando("seleciono a opcao de encaminhamento de {string}") do |opcao_enc|
    @email_a_registrar.escolher_opcao_encaminhamento(opcao_enc)
end

Quando("seleciono De {string} para o E-mail {string}") do |remetente_email, destinatario_email|
    @email_a_registrar.selecionar_remetente
    @email_a_registrar.selecionar_destinatario(destinatario_email)
    @email_a_registrar.adicionar_destinario_email
end

Quando("informo o Assunto {string}") do |assunto|
    @email_a_registrar.inserir_assunto(assunto)
end

Quando("informo a Mensagem {string}") do |corpo_mensagem|
    @email_a_registrar.inserir_corpo_msg(corpo_mensagem)
end

Quando("clico para encaminhar o E-mail com as informacoes") do
    @email_a_registrar.encaminhar_mensagem_email
end
                                                                            
Entao("eu Encaminho o E-mail com sucesso") do                                 

end        

Quando("clico para registrar o E-mail") do
    @email_a_registrar.registrar_email
end

Quando("preencho Numero ou Referencia {string} do documento e o Tipo do Documento {string}") do |nr_ou_ref, tipo_doc|
    @email_a_registrar.preencher_numero(nr_ou_ref)
    @email_a_registrar.selecionar_tipo_doc(tipo_doc)
end

Quando("preencho Origem {string}, Pais de Origem {string}, UF de Origem {string} Projeto {string}") do |origem, pais_origem, uf_origem, nome_projeto|
    @email_a_registrar.preencher_origem(origem)
    @email_a_registrar.selecionar_pais_origem(pais_origem)
    @email_a_registrar.selecionar_uf_origem(uf_origem)
    @email_a_registrar.selecionar_projeto(nome_projeto)
end

Quando("preencho Sigilo {string} e Tipo de Registro {string} e Prazo {string}") do |sigilo, tipo_registro, prazo|
    @email_a_registrar.selecionar_sigilo(sigilo)
    @email_a_registrar.selecionar_tipo_registro(tipo_registro)
    @email_a_registrar.selecionar_prazo(prazo)
end

Quando("preencho Assunto {string}") do |assunto|
    @email_a_registrar.preencher_assunto(assunto)
end

Quando("preencho Conteudo {string}") do |conteudo|
    @email_a_registrar.preencher_conteudo(conteudo)
end

Quando("clico para Adicionar Arquivo") do

end

Entao("eu Registro o E-mail com sucesso") do

end
  

Quando("clico para nao registrar o E-mail e confirmo") do
    @email_a_registrar.nao_registrar_email
    @email_a_registrar.confirmar
end

Entao("eu Nao Registro o E-mail com sucesso") do

end
