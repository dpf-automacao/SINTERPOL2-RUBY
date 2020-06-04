class ArmasPage < SitePrism::Page


    #MAPEAMENTO BOTÕES MENU ARMA
    element :incluir_arma_button, 'input[value="Incluir"]'
    element :pesquisar_arma_button, 'input[value="Pesquisar"]'

    #GRID OPERAÇÕES
    element :excluir_icone, 'input[title="Excluir"]'


    #MAPEAMENTO PESQUISAR ARMA
    elements :serie_pesquisa_input, 'input[name*="form"]'



    #MAPEAMENTO CAMPOS INCLUIR ARMA
    elements :numero_serie_input, 'input[name*="form"]'
    elements :fabricante_input, 'input[name*="form"]'
    elements :modelo_input, 'input[name*="form"]'
    elements :tipo_select, 'select[name*="form"]'
    elements :acao_select, 'select[name*="form"]'
    elements :calibre_select, 'select[name*="form"]'
    elements :pais_origem_select, 'select[name*="form"]'
    elements :pais_importacao_select, 'select[name*="form"]'
    element :esperar_tela_incluir, 'div[class="containerTitulo"]'
    element :sumir_campo_fabricante, 'input[name*="form:j_id133:j_id140"]'
    element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'


    #BOTÕES TELA INCLUIR/EXCLUIR/PESQUISAR
    element :salvar_btn, 'input[value="Salvar"]'
    element :limpar_btn, 'input[value="Limpar"]'
    element :cancelar_btn, 'input[value="Cancelar"]'
    element :ok_btn, 'input[value="OK"]'
    element :excluir_btn, 'input[value="Excluir"]'


    def preencher_arma

        incluir_arma_button.click

        @serie = '123456'
        @fabricante = 'Teste'
        @modelo = 'Teste'
        @tipo = 'Air'
        @acao = 'Other'
        @calibre = '.22'
        @origem = 'Afegan'
        @importacao = 'Afegan'


        sleep(3)
        numero_serie_input[0].set(@serie)
        fabricante_input[1].set(@fabricante)
        modelo_input[2].set(@modelo)
        tipo_select[0].click.select(@tipo)
        acao_select[1].click.select(@acao)
        calibre_select[2].click.select(@calibre)
        pais_origem_select[3].click.select(@origem)
        pais_importacao_select[4].click.select(@importacao)

        salvar_btn.click
        wait_until_aguardar_load_invisible
        # ok_btn.click

        sleep(5)
    end

    def pesquisar_arma

        @serie = '123456'

        serie_pesquisa_input[0].set(@serie)

        pesquisar_arma_button.click

    end

    def excluir_arma

        pesquisar_arma
        excluir_icone.click
        excluir_btn.click
        wait_until_aguardar_load_invisible
        ok_btn.click

        if(has_cancelar_btn?(wait:2))
            cancelar_btn.click
        end

        if(has_ok_btn?(wait:2))
            ok_btn.click
        end

    end

    def ok_excluir

        if(has_cancelar_btn?(wait:2))
            cancelar_btn.click
        end

        if(has_ok_btn?(wait:2))
            ok_btn.click
        end

    end

    def ok
        ok_btn.click
    end


end