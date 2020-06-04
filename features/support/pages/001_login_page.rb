class LoginPage < SitePrism::Page

    element :usuario_input, "input[id='emailcti']"
    element :senha_input, "input[id='senhacti']"
    element :acessar_btn, "input[id='acessarcti']"

    element :siseg_btn, "a[href='https://projetoshom.dpf.gov.br/siseg/siseg.php']"

    def acessar_sinterpol(usuario, senha)

        @usuario = usuario
        @senha = senha

        visit("/")

        if(has_siseg_btn?(wait:5))
            sleep(2)
            siseg_btn.click
            sleep(1)
            switch_to_window(windows.last)
        end

        if(has_usuario_input?(wait:5))
            usuario_input.click.set(@usuario)
            senha_input.click.set(@senha)
            acessar_btn.click
            click_link("SINTERPOL2")
            switch_to_window(windows.last)
        end

    end

end