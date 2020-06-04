class ConfiguracoesAreaPage < SitePrism::Page

    element :incluir_btn, "input[value='Incluir']"
    element :sigla_input, "input[id*='inputText_siglaUnidade']"
    element :nome_input, "input[id*='nome'][type='text'][style='width:250px']"
    element :codigo_input, "input[id*='codigo'][type='text'][style='width:250px']"
    element :salvar_btn, "input[value='Salvar']"
    element :confirmar_ok_btn, "input[id*='hideButtonWarn']"
    element :pesquisar_btn, "input[value='Pesquisar']"
    element :excluir_btn, "input[title='Excluir']"
    element :confirmar_exclusao_btn, "input[id*='hideYesButtonMessage']"
    element :registros_tbody, "tbody[id*='areaList']"
    element :modal_inclusao_sucesso, 'table[id="form:modalWarnContentTable"]'

    def incluir_area
        incluir_btn.click
    end

    def preencher_sigla(sigla)
        sigla_input.click.set(sigla)
        sleep(5)
        sigla_input.send_keys(:tab)
    end

    def preencher_nome(nome)
        nome_input.click.set(nome)
    end

    def preencher_codigo(codigo)
        codigo_input.click.set(codigo)
    end

    def salvar_inclusao
        salvar_btn.click
        confirmacao_de_acao
    end

    def pesquisar_area
        pesquisar_btn.click
        wait_until_registros_tbody_visible

    end

    def excluir_area
        excluir_btn.click
    end

    def confirmar_exclusao_area
        confirmar_exclusao_btn.click
        confirmacao_de_acao
    end

    def confirmacao_de_acao
        if(has_confirmar_ok_btn?(wait:3))
            sleep 5
            confirmar_ok_btn.click
        else
            puts ""
        end
    end


end

