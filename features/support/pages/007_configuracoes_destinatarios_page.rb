class ConfiguracoesDestinatariosPage < SitePrism::Page

    #consulta

    element :email_regional_radio, "input[value='R'][name*='form:']"
    element :email_I_24_7_radio, "input[value='I'][name*='form:']"
    element :email_geral_radio, "input[value='G'][name*='form:']"
    element :email_e_i24_radio, "input[value='E'][name*='form:']"
    element :endereco_email_input, "input[id*='inputText_campoEmail']"
    element :descricao_email_input, "input[id*='inputText_campoDescricao']"
    element :pesquisar_destinatario_input, "input[value='Pesquisar']"
    element :tabela_destinatarios_tbody, "tbody[id*='form:destinatarioList:tb']"

    # cadastro

    element :incluir_destinatario_btn, "input[value='Incluir']"
    element :email_regional_cad_radio, "table[id*='fomularioInserirDestinatario'] input[value='R'][name*='radioTipoDestinatario']"
    element :email_I_24_7_cad_radio, "table[id*='fomularioInserirDestinatario'] input[value='I'][name*='radioTipoDestinatario']"
    element :email_geral_cad_radio, "table[id*='fomularioInserirDestinatario'] input[value='G'][name*='radioTipoDestinatario']"
    element :email_e_i24_radio, 'input[value="E"][type="radio"][name*="radioTipoDestinatario"]'
    element :endereco_email_cad_input, "input[name*='id450']"
    element :descricao_email_cad_input, "input[name*='j_id466']"
    element :pais_cad_select, "select[id*='InserirDestinatario:decorate_campoPais']"
    element :estado_cad_select, "select[id*='InserirDestinatario:decorate_campoUF']"
    element :salvar_cad, "input[id*='Inserir'][value*='Salvar']"
    element :confirmacao_cadastro_ok, "input[id*='YesButtonMessage'][value='OK']"

    # edicao

    element :editar_destinario_btn, "input[title='Alterar']"
    element :email_regional_edt_radio, "input[name*='fomularioAlterarDestinatario'][value='R']"
    element :email_I_24_7_edt_radio, "input[name*='fomularioAlterarDestinatario'][value='I']"
    element :email_geral_edt_radio, "input[name*='fomularioAlterarDestinatario'][value='G']"
    element :endereco_email_edt_input, "input[name*='j_id293:j_id300']"
    element :descricao_email_edt_input, "input[name*='j_id309']"
    element :pais_edt_select, "select[id*='fomularioAlterarDestinatario:decorate_campoPais']"
    element :estado_edt_select, "select[id*='fomularioAlterarDestinatario:decorate_campoUF']"
    element :salvar_edt, "input[id*='Alterar'][value*='Salvar']"

    # exclusao

    element :excluir_destinatrio_btn, "input[title='Excluir']"
    element :confirmacao_exclusao_ok, "input[id*='hideYesButtonMessage'][value='OK']"

    # Meotodos para Consulta do Destinatario

    def selecionar_email_regional_consulta
        email_regional_radio.click
    end

    def selecionar_email_i_24_7_consulta
        email_I_24_7_radio.click
    end

    def selecionar_email_geral_consulta
        email_geral_radio.click
    end

    def selecionar_email_e_i24_consulta
        email_e_i24_radio.click
    end

    def selecionar_tipo_email_consulta(tipo_email)
        if(tipo_email == "Email e I-24/7")
            selecionar_email_e_i24_consulta
        elsif(tipo_email == "I-24/7")
            selecionar_email_i_24_7_consulta
        elsif(tipo_email == "Email Representação Regional")
            selecionar_email_regional_consulta
        else
             selecionar_email_geral_consulta
        end
    end

    def preencher_endereco_email_consulta(endereco_email)
        endereco_email_input.click.set(endereco_email)
    end

    def preencher_descricao_consulta(descricao)
        descricao_email_input.click.set(descricao)
        descricao_email_input.send_keys(:enter)
    end

    def pesquisar_destinatario
        pesquisar_destinatario_input.click
        wait_until_tabela_destinatarios_tbody_visible
    end
    
    # Meotodos para Cadastro do Destinatario

    def incluir_destinatario
        incluir_destinatario_btn.click
    end

    def selecionar_email_regional_cadastro
        email_regional_radio.click
    end

    def selecionar_email_e_i24_cadastro
        email_e_i24_radio.choose
    end

    def selecionar_email_i_24_7_cadastro
        email_I_24_7_cad_radio.click
    end

    def selecionar_email_geral_cadastro
        email_geral_cad_radio.click
    end

    def selecionar_tipo_email_cadastro(tipo_email)
        if(tipo_email == "Email Representação Regional")
            selecionar_email_regional_cadastro
        elsif(tipo_email == "I-24/7")
            selecionar_email_i_24_7_cadastro
        elsif(tipo_email == "Email Geral")
            selecionar_email_geral_cadastro
        else
            selecionar_email_e_i24_cadastro
        end
    end

    def preencher_endereco_email_cadastro(endereco_email)
        endereco_email_cad_input.click.set(endereco_email)
    end

    def preencher_descricao_cadastro(descricao)
        descricao_email_cad_input.click.set(descricao)
    end

    def selecionar_pais_cadastro(pais)
        pais_cad_select.click.select(pais)
    end
    
    def selecionar_estado_cadastro(pais, estado)
        if(pais == "Brasil")
            estado_cad_select.click.select(estado)
        else
            puts "Para o país selecionado não existe UF"
        end
    end

    def salvar_destinatario_cadastro
        salvar_cad.click
        wait_until_confirmacao_cadastro_ok_visible
        confirmacao_cadastro_ok.click
    end

    # Metodos para Edicao do Destinatario

    def editar_destinatario
        editar_destinario_btn.click
    end

    def selecionar_email_regional_edicao
        email_regional_edt_radio.click
    end

    def selecionar_email_i_24_7_edicao
        email_I_24_7_edt_radio.click
    end

    def selecionar_email_geral_edicao
        email_geral_edt_radio.click
    end

    def selecionar_tipo_email_edicao(tipo_email)
        if(tipo_email == "Email Representação Regional")
            selecionar_email_regional_edicao
        elsif(tipo_email == "I-24/7")
            selecionar_email_i_24_7_edicao
        else
            selecionar_email_geral_edicao
        end
    end

    def preencher_endereco_email_edicao(endereco_email)
        endereco_email_edt_input.click.set(endereco_email)
    end

    def preencher_descricao_edicao(descricao)
        descricao_email_edt_input.click.set(descricao)
    end

    def selecionar_pais_edicao(pais)
        pais_edt_select.click.select(pais)
    end
    
    def selecionar_estado_edicao(pais, estado)
        if(pais == "Brasil")
            estado_edt_select.click.select(estado)
        else
            puts "Para o país selecionado não existe UF"
        end
    end

    def salvar_destinatario_edicao
        salvar_edt.click
        wait_until_confirmacao_cadastro_ok_visible
    end

    # Metodos para exclusao do Destinario

    def excluir_destinatario
        sleep(0.5)
        excluir_destinatrio_btn.click
        sleep(0.5)
        confirmacao_exclusao_ok.click
    end


end