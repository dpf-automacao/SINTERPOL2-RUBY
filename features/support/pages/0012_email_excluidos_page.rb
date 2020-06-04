class EmailExcluidosPage < SitePrism::Page

    element :unidade_select, "select[name='form:j_id128:j_id139']"
    element :nome_da_conta_select, "select[name='form:j_id149:j_id160']"
    element :responsavel_exclusao_input, "input[id*='inputText_PessoaSuggestionBoxAction']"
    element :periodo_inicial_input, "input[id*='dataInicioInputDate']"
    element :periodo_final_input, "input[id*='dataFimInputDate']"
    element :pesquisar_msgs_excluidas, "input[value='Pesquisar']"
    elements :detalhar_msg_excluidas_btns, "input[title='Detalhar']"
    element :detalhar_table, "table[id='mdDetalheMensagemContentTable']"

    # METODOS PARA CONSULTA

    def selecionar_unidade_consulta(unidade)
        unidade_select.click.select(unidade)
    end

    def selecionar_nome_da_conta_consulta(nome_da_conta)
        nome_da_conta_select.click.select(nome_da_conta)
    end

    def preencher_responsael_exclusao_consulta(responsavel_exclusao)
        responsavel_exclusao_input.click.set(responsavel_exclusao)
        sleep(3)
        responsavel_exclusao_input.send_keys(:enter)
    end

    def preencher_periodo_inicial_consulta(periodo_inicial)
        periodo_inicial_input.click.set(periodo_inicial)
    end

    def preencher_periodo_final_consulta(periodo_final)
        periodo_final_input.click.set(periodo_final)
    end

    def pesquisar_msg_excluidas_consulta
        pesquisar_msgs_excluidas.click
    end

    # METODOS PARA DETALHAMENTO

    def selecionar_unidade_detalhar(unidade)
        unidade_select.click.select(unidade)
    end

    def selecionar_nome_da_conta_detalhar(nome_da_conta)
        nome_da_conta_select.click.select(nome_da_conta)
    end

    def preencher_responsael_exclusao_detalhar(responsavel_exclusao)
        responsavel_exclusao_input.click.set(responsavel_exclusao)
        sleep(3)
        responsavel_exclusao_input.send_keys(:enter)
    end

    def preencher_periodo_inicial_detalhar(periodo_inicial)
        periodo_inicial_input.click.set(periodo_inicial)
    end

    def preencher_periodo_final_detalhar(periodo_final)
        periodo_final_input.click.set(periodo_final)
    end

    def pesquisar_msg_excluidas_detalhar
        pesquisar_msgs_excluidas.click
    end

    def detalhar_mensagem_excluida
        detalhar_msg_excluidas_btns[0].click
        wait_until_detalhar_table_visible
    end


end