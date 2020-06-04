class EmailImportadasPage < SitePrism::Page

    element :unidade_select, "select[id*='comboUnidade']"
    element :nome_da_conta_select, "select[id*='comboConta']"
    element :periodo_inicial_input, "input[id*='dataInicioInputDate']"
    element :periodo_final_input, "input[id*='dataFimInputDate']"
    element :pesquisar_msgs_importadas, "input[value='Pesquisar']"
    elements :detalhar_msg_importadas_btns, "input[title='Detalhar']"
    element :detalhar_table, "table[id='form:table']"

    # METODOS PARA CONSULTA

    def selecionar_unidade_consulta(unidade)
        unidade_select.click.select(unidade)
    end

    def selecionar_nome_da_conta_consulta(nome_da_conta)
        nome_da_conta_select.click.select(nome_da_conta)
    end

    def preencher_periodo_inicial_consulta(periodo_inicial)
        periodo_inicial_input.click.set(periodo_inicial)
    end

    def preencher_periodo_final_consulta(periodo_final)
        periodo_final_input.click.set(periodo_final)
    end

    def pesquisar_msg_importadas_consulta
        pesquisar_msgs_importadas.click
        wait_until_detalhar_table_visible
    end

end