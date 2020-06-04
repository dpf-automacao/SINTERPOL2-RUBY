class ConfiguracoesFiltroDeMensagemPage < SitePrism::Page

    # CADASTRO, EDICAO(REAPROVEITAMENTO) DE FILTRO DE MENSAGEM

    element :incluir_filtro_btn, "input[value='Incluir']"
    element :nome_do_filtro_input, "input[name='form:j_id128:j_id135']"
    element :email_do_filtro_select, "select[id*='form:decorate_campoConta']"
    element :tipo_de_filtro_para_registrar_input, "input[value='false']"
    element :tipo_de_filtro_para_descartar_input, "input[value='true']"
    element :aplicar_filtro_todas_regras_input, "input[value='T']"
    element :aplicar_filtro_pelo_menos_uma_regras_input, "input[value='P']"
    element :regras_campo_select, "select[id*='comboCampo']"
    element :regras_condicao_select, "select[id*='comboCondicao']"
    element :regras_descricao_input, "input[id*='Descricao']"
    element :adicionar_btn, "input[value='Adicionar']"
    element :nova_pasta_btn, "input[value='Nova Pasta']"
    element :nome_pasta_input, "input[name*='j_id316']"
    element :criar_nova_pasta_btn, "input[value='Criar Pasta']"
    element :confirmar_criacao_nova_pasta_btn, "input[id*='hideButtonWarn']"
    element :salvar_nova_pasta_btn, "input[value='Salvar']"

    # CONSULTA DE FILTRO DE MENSAGEM

    element :email_filtro_consulta_select, "select[onchange*='pesquisarFiltroEmail']"

    # DETALHAR DE FILTRO DE MENSAGEM

    elements :linhas_registros_tds, "td[id*='j_id153']"
    elements :detalhar_btns, "input[title='Detalhar']"

    # EDITAR DE FILTRO DE MENSAGEM

    elements :editar_btns, "input[title='Alterar']"
    element :selecionar_pasta_edt, "select[name*='j_id260:j_id271']"
    element :renomear_pasta_edt_btn, "input[value='Renomear Pasta']"
    element :renomear_edt_btn, "input[value='Renomear']"
    element :nome_pasta_renomeada_input, "input[name*='j_id351']"
    element :excluir_pasta_input, "input[value='Excluir Pasta']"
    element :confirmar_renomeacao_btn, "input[id*='hideButtonWarn']"

    # EXCLUSAO DE FILTRO DE MENSAGEM

    elements :excluir_filtro_btns, "input[title='Excluir']"
    element :excluir_filtro_msg_btn, "input[value='Excluir']"
    element :confirmar_exclusao_btn, "input[id*='hideYesButtonMessage']"
    

    # METODOS PARA CADASTRO E EDICAO DE FILTRO DE MENSAGEM

    def incluir_filtro
        incluir_filtro_btn.click
    end

    def preencher_nome_filtro(nome_filtro)
        nome_do_filtro_input.click.set(nome_filtro)
    end

    def selecionar_email_filtro(email)
        email_do_filtro_select.click.select(email)
    end

    def selecionar_tipo_filtro(tipo_filtro)
        if(tipo_filtro == "Para registrar")
            selecionar_para_registrar.click
        elsif(tipo_filtro == "Para descartar")
            selecionar_para_descartar.click
        else
            puts "Houve um erro na selecao de Tipo de Filtro"
        end
    end

    def selecionar_para_registrar
        tipo_de_filtro_para_registrar_input.click
    end

    def selecionar_para_descartar
        tipo_de_filtro_para_descartar_input.click
    end

    def selecionar_aplicar_para(aplicar_para)
        if(aplicar_para == "Todas as regras abaixo")
            selecionar_todas_regras_abaixo.click
        elsif(aplicar_para == "Pelo menos uma das regras abaixo")
            selecionar_pelo_menos_uma_regra.click
        else
            puts "Houve um erro na selecao de Aplicar Para"
        end
    end

    def selecionar_todas_regras_abaixo
        aplicar_filtro_todas_regras_input.click
    end

    def selecionar_pelo_menos_uma_regra
        aplicar_filtro_pelo_menos_uma_regras_input.click
    end

    def selecionar_campo(campo)
        regras_campo_select.click.select(campo)
    end

    def selecionar_condicao(condicao)
        regras_condicao_select.click.select(condicao)
    end

    def selecionar_descricao(descricao)
        regras_descricao_input.click.set(descricao)
    end

    def adicionar_filtro
        adicionar_btn.click
    end

    def nova_pasta
        sleep(0.5)
        nova_pasta_btn.click
        sleep(0.5)
    end

    def preencher_nome_da_pasta(nome_da_pasta)
        wait_until_criar_nova_pasta_btn_visible
        nome_pasta_input.click.set(nome_da_pasta)
    end

    def criar_nova_pasta
        criar_nova_pasta_btn.click
    end

    def confirmar_pasta
        confirmar_criacao_nova_pasta_btn.click
    end

    def salvar_nova_pasta
        salvar_nova_pasta_btn.click
    end

    # METODOS PARA CONSULTA DE FILTRO DE MENSAGEM

    def selecionar_email_consulta(email_consulta)
        email_filtro_consulta_select.select(email_consulta)
    end

    # METODOS PARA DETALHAMENTO DE FILTRO DE MENSAGEM

    def detalhar_filtro(nome_filtro)
        @tamanho_lista = detalhar_btns.size
        @indice = 0

        while(@indice < @tamanho_lista)

            puts @tamanho_lista
            puts linhas_registros_tds[@indice].text

            if(linhas_registros_tds[@indice].text == "filtro_automacao")
                detalhar_btns[@indice].click
                @indice = @tamanho_lista
            end

            @indice += 1

        end
    end

    # METODOS PARA EDICAO DE FILTRO DE MENSAGEM

    def editar_filtro(nome_filtro)

        @tamanho_lista = editar_btns.size
        @indice = 0

        while(@indice < @tamanho_lista)

            puts @tamanho_lista
            puts linhas_registros_tds[@indice].text

            if(linhas_registros_tds[@indice].text == "filtro_automacao")
                editar_btns[@indice].click
                @indice = @tamanho_lista
            end

            @indice += 1

        end 

    end

    def selecionar_pasta_edicao(nome_pasta)
        selecionar_pasta_edt.click.select(nome_pasta)
    end

    def renomear_pasta_edicao
        renomear_pasta_edt_btn.click
    end

    def preencher_renomeacao_pasta(nome_pasta_renomeda)
        nome_pasta_renomeada_input.click.set(nome_pasta_renomeda)
    end

    def renomear_edicao
        renomear_edt_btn.click
    end

    def confirmar_renomeacao_pasta_edicao
        confirmar_renomeacao_btn.click
    end

    def excluir_pasta(nome_pasta)
        excluir_pasta_input.click
    end

    # METODOS PARA EXCLUSAO DO FILTRO

    def excluir_filtro(nome_filtro)

        @tamanho_lista = excluir_filtro_btns.size
        @indice = 0

        while(@indice < @tamanho_lista)

            puts @tamanho_lista
            puts linhas_registros_tds[@indice].text

            if(linhas_registros_tds[@indice].text == "filtro_automacao")
                excluir_filtro_btns[@indice].click
                @indice = @tamanho_lista
            end

            @indice += 1

        end 

    end

    def excluir_filtro_mensagem
        excluir_filtro_msg_btn.click
    end

    def confirmar_exclusao_filtro
        confirmar_exclusao_btn.click
    end



end