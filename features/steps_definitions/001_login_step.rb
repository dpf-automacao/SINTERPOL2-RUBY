Quando("eu informo login {string} e senha {string} clico para Acessar e seleciono Sinterpol") do |usuario, senha|
    sleep(2)
    @login = LoginPage.new
    @login.acessar_sinterpol(usuario, senha)

end                                                                                                               
                                                                                                                
Entao("eu realizo um login com sucesso no sinterpol") do                                                          

    

end                                                                                                               