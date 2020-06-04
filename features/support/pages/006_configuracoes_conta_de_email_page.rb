class ConfiguracoesContaDeEmailPage < SitePrism::Page

    element :incluir_conta_de_email_btn, "input[value='Incluir']"
    element :tipo_de_mensagem_select, "div[id='form:j_id125'] select"
    element :nome_conta_input, "input[name*='id137']"
    element :endereco_de_email_input, "input[name*='id155']"
    element :tipo_de_conta_select, "select[name*='id159']"
    elements :envio_e_recebimento_checkbox, "input[type='checkbox']"
    element :servidor_de_entrada_input, "input[name*='id197']"
    element :servidor_de_saida_input, "input[name*='id209']"
    element :nome_usuario_input, "input[name*='id220']"
    element :senha_usuario_input, "input[type='password']"
    element :unidade_usuario_input, "input[id*='LotacaoSuggestionBoxAction'][type='text']"
    element :testar_conta_email_btn, "input[value='Testar']"
    element :teste_de_conta_email_modal, "div[id='modalTestMailHeader']"
    elements :nome_conta_td, "td[id*='j_id132']"
    element :confirmar_inclusão_btn, 'input[id*="ButtonWarn"][value="OK"]'
    elements :excluir_conta_btn, "input[title='Excluir']"
    element :fechar_teste_de_conta_email_btn, "span[id='hidelinkDetalharMensagem']"
    element :salvar_conta_email_btn, "input[value='Salvar']"
    element :confirmacao_btn, "input[id*='hideYesButtonMessage']"

    def incluir_conta_de_email
        incluir_conta_de_email_btn.click
    end

    def selecionar_tipo_de_mensagem(tipo_de_mensagem)
        tipo_de_mensagem_select.select(tipo_de_mensagem)
    end

    def preencher_nome_conta(nome_conta)
        nome_conta_input.click.set(nome_conta)
    end

    def preencher_endereco_de_email(endereco_email)
    endereco_de_email_input.click.set(endereco_email)
    end

    def selecionar_tipo_de_conta(tipo_de_conta)
        tipo_de_conta_select.select(tipo_de_conta)
    end

    def selecionar_envio
        envio_e_recebimento_checkbox[0].check
        sleep(1)
    end

    def retirar_envio
        envio_e_recebimento_checkbox[0].uncheck
        sleep(1)
    end

    def selecionar_recebimento
        envio_e_recebimento_checkbox[1].check
        sleep(1)
    end

    def retirar_recebimento
        envio_e_recebimento_checkbox[1].uncheck
        sleep(1)
    end

    def preencher_servidor_entrada(servidor_de_entrada)
        servidor_de_entrada_input.click.set(servidor_de_entrada)
    end

    def preencher_servidor_saida(servidor_de_saida)
        servidor_de_saida_input.click.set(servidor_de_saida)
    end

    def preencher_nome_usuario(nome_usuario)
        nome_usuario_input.click.set(nome_usuario)
    end

    def preencher_senha_usuario(senha_usuario)
        senha_usuario_input.click.set(senha_usuario)
    end

    def preencher_unidade_usuario(unidade_usuario)
        unidade_usuario_input.click.set(unidade_usuario)
        sleep(3)
        unidade_usuario_input.send_keys(:tab)
        sleep(1)
    end

    def excluir_conta_email(nome_conta)
        @nome_conta = nome_conta
        @indice = 0
        @tamanho_contas = excluir_conta_btn.size

        while(@indice < @tamanho_contas)

            # binding.pry

            if(nome_conta_td[@indice].text == nome_conta)
                puts "Excluindo conta de e-mail no indice #{@indice}"
                excluir_conta_btn[@indice].click
            else
                puts "Não existe conta de e-mail cadastrada com o nome #{@nome_conta} no indice #{@indice}"
            end

            @indice += 1

        end

    end

    def confirmar_exclusao
        if(has_confirmacao_btn?(wait:1))
            confirmacao_btn.click
        else
            puts "Não existe modal de confirmacao para exclusao"
        end
    end

    def testar_conta_email
        testar_conta_email_btn.click
        wait_until_teste_de_conta_email_modal_visible
        fechar_teste_de_conta_email_btn.click
        wait_until_teste_de_conta_email_modal_invisible
    end

    def salvar_conta_de_email
        salvar_conta_email_btn.click
        wait_until_confirmar_inclusão_btn_visible
        confirmar_inclusão_btn.click
    end


end