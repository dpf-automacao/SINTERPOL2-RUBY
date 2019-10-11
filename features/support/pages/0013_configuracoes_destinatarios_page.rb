class ConfiguracoesDestinatariosPage < SitePrism::Page


    element :email_regional_radio, "input[value='R'][name*='form:']"
    element :email_I_24_7_radio, "input[value='I'][name*='form:']"
    element :email_geral_radio, "input[value='G'][name*='form:']"
    element :endereco_email_input, "input[id*='inputText_campoEmail']"
    element :descricao_email_input, "input[id*='inputText_campoDescricao']"
    element :email_regional_cad_radio, "table[id*='fomularioInserirDestinatario'] input[value='R'][name*='radioTipoDestinatario']"
    element :email_I_24_7_cad_radio, "table[id*='fomularioInserirDestinatario'] input[value='R'][name*='radioTipoDestinatario']"
    element :email_geral_cad_radio, "table[id*='fomularioInserirDestinatario'] input[value='R'][name*='radioTipoDestinatario']"
    element :endereco_email_cad_input, "input[name*='j_id415']"
    element :descricao_email_cad_input, "input[name*='j_id431']"
    element :pais_cad_select, "select[id*='InserirDestinatario:decorate_campoPais']"
    element :salvar_cad, "input[id*='Inserir'][value*='Salvar']"

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

    def preencher_endereco_email_consulta(endereco_email)
        endereco_email_input.click.set(endereco_email)
    end

    def preencher_descricao_consulta(descricao)
        descricao_email_input.click.set(descricao)
    end
    
    # Meotodos para Cadastro do Destinatario

    def selecionar_email_regional_cadastro
        email_regional_cad_radio.click
    end

    def selecionar_email_i_24_7_cadastro
        email_I_24_7_cad_radio.click
    end

    def selecionar_email_geral_cadastro
        email_geral_cad_radio.click
    end

    def preencher_endereco_email_cadastro(endereco_email)
        endereco_email_input.click.set(endereco_email)
    end

    def preencher_descricao_cadastro(descricao)
        descricao_email_input.click.set(descricao)
    end

    def selecionar_pais(pais)
        pais_cad_select.select(pais)
    end

    def salvar_destinatario
        salvar_cad.click
    end


end