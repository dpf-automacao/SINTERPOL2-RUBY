Quando("eu entro na pagina inicial do gmail") do

    @gmail = EnvioDeEmailGmailPage.new

end

Quando("informo email {string} e senha {string} e clico para entrar") do |email, senha|
    sleep(2)
    @gmail.entrar_gmail(email, senha)

end

Quando("realizo o envio de email para o sinterpol") do

    @gmail.enviar_email

end

Entao("realizo o envio de email para o sinterpol com sucesso") do



end