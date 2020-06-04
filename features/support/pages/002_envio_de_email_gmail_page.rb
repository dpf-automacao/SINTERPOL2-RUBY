class EnvioDeEmailGmailPage < SitePrism::Page

    element :email_input, "input[id='identifierId']"
    element :proximo_user_btn, "div[id='identifierNext']"
    element :senha_input, "input[name='password']"
    element :proximo_senha_btn, "div[id='passwordNext']"
    element :escrever_btn, "div [gh='cm']"
    element :caixa_de_entrada, "a[title='Caixa de entrada']"
    element :para_textarea, "textarea[aria-label='Para']"
    element :assunto_input, "input[placeholder='Assunto']"
    element :conteudo_msg_input, "div[aria-label='Corpo da mensagem']"
    element :enviar_email_btn, "div div[data-tooltip*='Enviar']"
    element :msg_enviada_span, "span[class='bAq']"
    element :iniciar_sessao_btn, "ul[class='h-c-header__cta-list header__nav--ltr'] a[href='https://accounts.google.com/AccountChooser?service=mail&continue=https://mail.google.com/mail/'][ga-event-action='sign in']"

    def entrar_gmail(email, senha)

        @email = email
        @senha = senha

        visit("http://www.gmail.com.br")

        if(has_iniciar_sessao_btn?(wait:1))
            iniciar_sessao_btn.click
            switch_to_window(windows.last)
        end

        email_input.click.set(@email)
        proximo_user_btn.click
        senha_input.click.set(@senha)
        proximo_senha_btn.click

    end

    def enviar_email
        @nr_aleatorio = rand(1..10000)
        @mensagem = "Este e-mail foi gerado para realização de testes no sistema SINTERPOL - Vinicius Fernando [#{@nr_aleatorio}]"
        # @assunto = "Email gerado por teste automatizado"
        @assunto = "teste"
        @destinatario = "teste.scgpci@dpf.gov.br"
        @email_nao_enviado = "Mensagem é diferente de Mensagem enviada."
        @email_enviado = "Mensagem enviada."

        sleep(0.5)
        wait_until_caixa_de_entrada_visible
        sleep(0.5)

        escrever_btn.click
        para_textarea.click.set(@destinatario)
        para_textarea.send_keys(:tab)
        assunto_input.click.set(@assunto)
        conteudo_msg_input.click.set(@mensagem)
        puts @mensagem
        enviar_email_btn.click
        
        while(msg_enviada_span.text != @email_enviado)
            puts @email_nao_enviado
        end

    end


end