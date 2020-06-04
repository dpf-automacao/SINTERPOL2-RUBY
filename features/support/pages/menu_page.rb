class MenuPage < SitePrism::Page

    # Mapeamento do menu EMAIL

    element :email_label, "form[id='j_id42'] div[id*='j_id65'] label"
    element :registrar_div, "div[id*='j_id68']"
    element :arquivadas_div, "div[id*='j_id78']"
    element :descartar_div, "div[id*='j_id70']"
    element :excluidas_span, "span[id='j_id42:j_id72:anchor']"
    element :registradas_span, "span[id='j_id42:j_id74:anchor']"
    element :importadas_span, "span[id='j_id42:j_id76:anchor']"
    
    # Mapeamento do menu Configuracoes

    element :configuracoes_div, "div[class*='dr-menu-label'][id*='j_id42:j_id80']"
    element :area_span, "span[id='j_id42:j_id83:anchor']"
    element :associar_usuario_span, "span[id='j_id42:j_id85:anchor']"
    element :assinatura_usuario_span, "span[id='j_id42:j_id87:anchor']"
    element :contas_de_email_span, "span[id*='j_id42:j_id89:anchor']"
    element :destinatarios_span, "span[id='j_id42:j_id91:anchor']"
    element :filtro_de_mensagem_span, "span[id='j_id42:j_id93:anchor']"
    element :sistema_span, "span[id='j_id42:j_id95:anchor']"
    element :projeto_span, "span[id='j_id42:j_id97:anchor']"

    # Mapeamento do menu Relatorios

    element :relatorios_div, "div[id='j_id42:j_id99']"
    element :consolidado_span, "span[id='j_id42:j_id102:anchor']"
    element :gerencial_span, "span[id='j_id42:j_id104:anchor']"

    #MAPEAMENTO DE ELEMENTOS DE MENUS "REGISTROS"

    element :registros_menu, :xpath, "//div[text()='Registros']"
    element :documentos_recebidos_submenu, :xpath, '//span[text()="Documentos Recebidos"]'
    element :mensagemst_submenu, "span[id='j_id42:j_id52:anchor']"
    element :mensagens_submenu, :xpath, '//span[text()="Mensagens"]'
    element :armas_submenu, :xpath, '//span[text()="Armas"]'
    element :doc_de_viagem_submenu, :xpath, '//span[text()="Documentos de Viagem"]'
    element :pessoas_submenu, :xpath, '//span[text()="Pessoas"]'
    element :veiculos_submenu, :xpath, '//span[text()="Veículos"]'

    # METODOS DO MENU EMAIL

    def menu_email
        email_label.hover
    end

    def sub_menu_a_registrar
        registrar_div.hover
        registrar_div.click
    end

    def sub_menu_arquivadas
        arquivadas_div.hover
        arquivadas_div.click
    end

    def sub_menu_a_descartar
        descartar_div.hover
        descartar_div.click
    end

    def sub_menu_excluidas
        excluidas_span.hover
        excluidas_span.click
    end

    def sub_menu_registradas
        registradas_span.hover
        registradas_span.click
    end

    def sub_menu_importadas
        importadas_span.hover
        importadas_span.click
    end

    # METODOS DO MENU CONFIGURACOES

    def menu_configuracoes
        configuracoes_div.hover
    end

    def sub_menu_area
        area_span.hover
        area_span.click
    end

    def sub_menu_associar_usuario
        associar_usuario_span.hover
        associar_usuario_span.click
    end

    def sub_menu_assinatura_usuario
        assinatura_usuario_span.hover
        assinatura_usuario_span.click
    end

    def sub_menu_constas_de_email
        contas_de_email_span.hover
        contas_de_email_span.click
    end

    def sub_menu_destinatarios
        destinatarios_span.hover
        destinatarios_span.click
    end

    def sub_menu_filtros_de_mensagem
        filtro_de_mensagem_span.hover
        filtro_de_mensagem_span.click
    end

    def sub_menu_sistema
        sistema_span.hover
        sistema_span.click
    end

    def sub_menu_projeto
        projeto_span.hover
        projeto_span.click
    end
    
    # METODOS DO MENU RELATORIOS

    def menu_relatorios
        relatorios_div.hover
    end

    def sub_menu_consolidado_de_doc
        consolidado_span.hover
        consolidado_span.click
    end

    def sub_menu_gerencial_por_servidor
        gerencial_span.hover
        gerencial_span.click
    end

    def submenu_documentos_recebidos
        documentos_recebidos_submenu.hover
        documentos_recebidos_submenu.click
    end
    
    def submenu_mensagemst
        mensagemst_submenu.hover
        mensagemst_submenu.click
    end
    
    def submenu_mensagens
        mensagens_submenu.hover
        mensagens_submenu.click
    end
    
    def submenu_armas
        armas_submenu.hover
        armas_submenu.click
    
    end
    
    def submenu_doc_de_viagem
        doc_de_viagem_submenu.hover
        doc_de_viagem_submenu.click
    
    end
    
    def submenu_pessoas
        pessoas_submenu.hover
        pessoas_submenu.click
    
    end
    
    def submenu_veiculos
        veiculos_submenu.hover
        veiculos_submenu.click
    
    end
    
    
    def selecionar_submenu_registros(tipo_menu)
    
        registros_menu.hover
        sleep(0.5)
        
        if(tipo_menu == "Documentos Recebidos")
            submenu_documentos_recebidos
    
        elsif(tipo_menu == "Mensagem ST")
            submenu_mensagemst
    
        elsif(tipo_menu == "Mensagens")
            submenu_mensagens
    
        elsif(tipo_menu == "Armas")
            submenu_armas
    
        elsif(tipo_menu == "Documentos de Viagem")
            submenu_doc_de_viagem
    
        elsif(tipo_menu == "Pessoas")
            submenu_pessoas
    
        elsif(tipo_menu == "Veículos")
            submenu_veiculos
    
        else
    
            puts "Nenhum menu foi localizado"
        end
      end

end