class EmailRegistradasPage < SitePrism::Page

    element :unidade_select, "select[name='form:j_id128:j_id139']"
    element :nome_da_conta_select, "select[name='form:j_id149:j_id160']"
    element :responsavel_registro_input, "input[id*='inputText_PessoaSuggestionBoxAction']"
    element :periodo_inicial_input, "input[id*='dataInicioInputDate']"
    element :periodo_final_input, "input[id*='dataFimInputDate']"
    element :pesquisar_msgs_registradas, "input[value='Pesquisar']"
    elements :detalhar_msg_registradas_btns, "input[title='Detalhar']"
    element :detalhar_table, "table[id='mdDetalheMensagemContentTable']"

    # METODOS PARA CONSULTA

    def selecionar_unidade_consulta(unidade)
        binding.pry
        unidade_select.click.select(unidade)
    end

    def selecionar_nome_da_conta_consulta(nome_da_conta)
        binding.pry
        nome_da_conta_select.click.select(nome_da_conta)
    end

    def preencher_responsael_registro_consulta(responsavel_registro)
        binding.pry
        responsavel_registro_input.click.set(responsavel_registro)
        sleep(3)
        responsavel_registro_input.send_keys(:enter)
    end

    def preencher_periodo_inicial_consulta(periodo_inicial)
        binding.pry
        periodo_inicial_input.click.set(periodo_inicial)
    end

    def preencher_periodo_final_consulta(periodo_final)
        binding.pry
        periodo_final_input.click.set(periodo_final)
    end

    def pesquisar_msg_registradas_consulta
        binding.pry
        pesquisar_msgs_registradas.click
    end

    # METODOS PARA DETALHAMENTO

    def selecionar_unidade_detalhar(unidade)
        binding.pry
        unidade_select.click.select(unidade)
    end

    def selecionar_nome_da_conta_detalhar(nome_da_conta)
        binding.pry
        nome_da_conta_select.click.select(nome_da_conta)
    end

    def preencher_responsavel_registro_detalhar(responsavel_registro)
        binding.pry
        responsavel_registro_input.click.set(responsavel_registro)
        sleep(3)
        responsavel_registro_input.send_keys(:enter)
    end

    def preencher_periodo_inicial_detalhar(periodo_inicial)
        binding.pry
        periodo_inicial_input.click.set(periodo_inicial)
    end

    def preencher_periodo_final_detalhar(periodo_final)
        binding.pry
        periodo_final_input.click.set(periodo_final)
    end

    def pesquisar_msg_registradas_detalhar
        binding.pry
        pesquisar_msgs_registradas.click
    end

    def detalhar_mensagem_registrada
        binding.pry
        detalhar_msg_registradas_btns[0].click
        wait_until_detalhar_table_visible
    end

    
end