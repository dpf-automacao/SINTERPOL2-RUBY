class EmailArquivadasPage < SitePrism::Page

    # Mapeamentos para Menu E-mail (SUBMENU ARQUIVADAS)

    element :consultar_mensagens_form, "form[id='form']"
    element :und_consulta_arquivada_select, "select[onchange*='interpol/consultarMensagensArquivadas/consultarMensagensArquivadas']"
    element :nome_da_conta_select, "select[name*='j_id149']"
    element :resp_arquivamento_input, "input[id*='inputText_PessoaSuggestionBoxAction']"
    element :data_inicio_input, "input[id*='dataInicioInputDate']"
    element :data_fim_input, "input[id*='dataFimInputDate']"
    element :pesquisar_btn, "input[value='Pesquisar']"

    elements :detalhar_btn, "input[src='/interpol/imagens/ico_detalhar_cubo.gif']"

    def consultar_mensagens_arquivadas(und, conta, resp)
        @data_atual = Time.now
        dt_inicial = @data_atual.strftime("%d/%m/%Y")
        dt_final = @data_atual.strftime("%d/%m/%Y")
        wait_until_consultar_mensagens_form_visible
        und_consulta_arquivada_select.select(und)
        sleep(2)
        nome_da_conta_select.select(conta)
        sleep(0.5)
        resp_arquivamento_input.click.set(resp)
        sleep(2)
        resp_arquivamento_input.send_keys(:enter)
        data_inicio_input.click.set(dt_inicial)
        sleep(0.5)
        data_fim_input.click.set(dt_final)
    end

    def pesquisar_mensagem_arquivada
        sleep(1)
        pesquisar_btn.click
    end

    def detalhar_email_arquivado
        detalhar_btn[0].click
    end 

end