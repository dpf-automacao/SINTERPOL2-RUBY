Quando("eu incluir um novo documento no menu {string}") do |tipo_menu|          
    @login = LoginPage.new
    @login.acessar_sinterpol(usuario, senha)
    @menupage = MenuPage.new
    @menupage.selecionar_submenu_registros(tipo_menu)
    @mensagemcorrigir = MensagemCorrigir.new
end            
           
Quando("eu pesquisar um documento para criar mensagem do analista") do                                       
    @mensagemcorrigir = MensagemCorrigir.new
end  
                                                                               
Quando("salvar o documento") do                                              
    @mensagemcorrigir.preencher_inclusao_documento_analista
end                                                                          
                                                                               
Entao("eu vejo a tela de sucesso") do                                        

end                                                                          
                                                                               
Quando("responder o documento com a analista") do                      
    @mensagemcorrigir.pesquisar_doc_analista

end                                                                          
                                                                               
Então("eu crio a mensagem") do
    @mensagemcorrigir.responder_documento_analista   
    @mensagemcorrigir.logout
    @mensagemcorrigir.siseg_sair
end

 
#SOLICITAR CORREÇÃO (ADMIN)
Quando("eu pesquisar uma mensagem para solicitar correcao") do
    @mensagemcorrigir = MensagemCorrigir.new
    @mensagemcorrigir.pesquisar_doc_analista      
end
  
Então("eu solicito a correcao") do
    @mensagemcorrigir.solicitar_corecao
    @mensagemcorrigir.logout
    @mensagemcorrigir.siseg_sair
    # expect(page).to have_content() 
end

#CORRIGIR MENSAGEM (ANALISTA)
Quando("eu pesquisar uma mensagem para corrigir") do      
    @mensagemcorrigir = MensagemCorrigir.new     
    @login = LoginPage.new
    @login.logar_siseg("veronique.vac", "ctidpf")  
    @mensagemcorrigir.pesquisar_doc_analista             
    @mensagemcorrigir.corrigir_mensagem   
end                                                                             
                                                                                  
Então("eu corrijo a mensagem") do                                               

end                                                                             