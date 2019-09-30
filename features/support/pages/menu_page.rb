class MenuPage < SitePrism::Page

    element :email_label, "form[id='j_id42'] div[id*='j_id65'] label"
    element :registrar_label, "div[id*='j_id68']"


    def menu_email
        email_label.hover
    end

    def sub_menu_a_registrar
        registrar_label.hover
        registrar_label.click
    end

end