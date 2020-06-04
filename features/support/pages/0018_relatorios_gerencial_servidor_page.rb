class RelatoriosGerencialServidorPage < SitePrism::Page

    element :unidade_select, "select[name*='j_id129:j_id140']"
    element :periodo_inicial_input, "input[id*='dataInicioInputDate']"
    element :periodo_final_input, "input[id*='dataFimInputDate']"
    element :gerar_relatorio_gerencial_btn, "input[value='Gerar']"
    element :relatorio_table, "thead[class='dr-table-thead']"

    def selecionar_unidade(unidade)
        unidade_select.click.select(unidade)
    end

    def preencher_periodo_inicial(periodo_inicial)
        periodo_inicial_input.click.set(periodo_inicial)
    end

    def preencher_periodo_final(periodo_final)
        periodo_final_input.click.set(periodo_final)
    end

    def gerar_relatorio_gerencial
        gerar_relatorio_gerencial_btn.click
        wait_until_relatorio_table_visible(wait:80)
    end

end