class ConfiguracoesSistemaPage < SitePrism::Page

    # MENSAGEM ST

    element :configurar_msg_st_btn, "input[value='Configurar Mensagem ST']"
    element :unidade_origem_st_select, "select[name*='j_id134:j_id145']"
    element :unidade_destino_st_select, "select[name='form:j_id154:j_id165']"
    elements :excluir_mensagem_st_btns, "input[id*='j_id148'][title='Excluir']"
    elements :unidade_origem_st_tds, "td[id*='j_id142']"
    elements :unidade_destino_st_tds, "td[id*='j_id144']"
    element :confirmar_exclusao_st_btn, "input[id='form:hideYesButtonMessage']"

    # VALORES

    element :configurar_valores_btn, "input[value='Configurar Valores']"
    element :unidade_valores_select, "select[name='form:j_id134:j_id145']"
    element :tipo_registro_valores_select, "select[name='form:j_id154:j_id165']"
    element :sigilo_valores_select, "select[name='form:j_id174:j_id181']"
    elements :excluir_conf_vlr_btns, "input[id*='j_id222'][title='Excluir']"
    elements :unidade_vlr_tds, "td[id*='j_id215']"
    
    # GERAL

    element :configurar_btn, "input[value='Configurar']"
    element :confirmar_configuracao_btn, "input[id*='hideButtonWarn']"
    element :confirmar_exclusao_vlr_btn, "input[id='form:hideYesButtonMessageDoc']"



    # METODOS PARA CONFIGURACAO DE MENSAGENS ST

    def configurar_msg_st
        configurar_msg_st_btn.click
    end

    def selecionar_unidade_origem_st(unidade_origem)
        unidade_origem_st_select.click.select(unidade_origem)
    end

    def selecionar_unidade_destino_st(unidade_destino)
        unidade_destino_st_select.click.select(unidade_destino)
    end

    def configurar_st_novamente
        configurar_btn.click
    end

    def confirmar_configuracao_st
        confirmar_configuracao_btn.click
    end

    # METODOS PARA EXCLUSAO DA MENSAGEM ST

    def excluir_mensagem_st(unidade_origem, unidade_destino)
        @tamanho_lista = excluir_mensagem_st_btns.size
        @indice = 0

        while(@indice < @tamanho_lista)

            puts "tamanho da lista: #{@tamanho_lista}" 
            puts unidade_origem_st_tds[@indice].text
            puts unidade_destino_st_tds[@indice].text

            if(unidade_origem_st_tds[@indice].text == unidade_origem && unidade_destino_st_tds[@indice].text == unidade_destino)
                excluir_mensagem_st_btns[@indice].click
                @indice = @tamanho_lista
            end

            @indice += 1

        end
    end

    def confirmar_exclusao_st_btn
        confirmar_exclusao_btn.click
    end

    # METODOS PARA CONFIGURACAO DE VALORES

    def configurar_valores
        binding.pry
        configurar_valores_btn.click
    end

    def selecionar_unidade_valores(unidade)
        binding.pry
        unidade_valores_select.click.select(unidade)
    end

    def selecionar_tipo_registro_valores(tipo_registro)
        binding.pry
        tipo_registro_valores_select.click.select(tipo_registro)
    end

    def selecionar_sigilo_valores(sigilo)
        binding.pry
        sigilo_valores_select.click.select(sigilo)
    end

    def configurar_vlr
        binding.pry
        configurar_btn.click
        binding.pry
    end

    def confirmar_configuracao_vlr
        confirmar_configuracao_btn.click
    end

    # METODOS PARA EXCLUSAO DE CONFIGURACAO DE VALORES

    def excluir_conf_valores(unidade_vlr)
        @tamanho_lista = excluir_conf_vlr_btns.size
        @indice = 0

        while(@indice < @tamanho_lista)

            puts "tamanho da lista: #{@tamanho_lista}" 
            puts unidade_vlr_tds[@indice].text

            binding.pry

            if(unidade_vlr_tds[@indice].text == unidade_vlr)
                excluir_conf_vlr_btns[@indice].click
                @indice = @tamanho_lista
            end

            @indice += 1

        end
    end

    def confirmar_exclusao_conf_vlr
        binding.pry
        confirmar_exclusao_vlr_btn.click
        binding.pry
    end
    

end