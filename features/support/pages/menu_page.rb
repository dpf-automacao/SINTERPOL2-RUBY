class MenuPage < SitePrism::Page

    # Mapeamento do menu EMAIL

    element :email_label, "form[id='j_id42'] div[id*='j_id65'] label"
    element :registrar_div, "div[id*='j_id68']"
    element :arquivadas_div, "div[id*='j_id78']"
    element :descartar_div, "div[id*='j_id70']"

     # Mapeamento do menu Configuracoes

    element :configuracoes_div, "div[class*='dr-menu-label'][id*='j_id42:j_id80']"
    element :area_span, "span[id='j_id42:j_id83:anchor']"
    element :associar_usuario_span, "span[id='j_id42:j_id85:anchor']"
    element :contas_de_email_span, "span[id*='j_id42:j_id89:anchor']"

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

    # METODOS DO MENU CONFIGURACOES

    def menu_configuracoes
        configuracoes_div.hover
    end

    def sub_menu_area
        area_span.click
    end

    def sub_menu_associar_usuario
        associar_usuario_span.click
    end

    def sub_menu_constas_de_email
        contas_de_email_span.click
    end

end