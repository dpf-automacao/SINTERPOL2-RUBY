class LoginPage < SitePrism::Page

    element :usuario_input, "input[id='emailcti']"
    element :senha_input, "input[id='senhacti']"
    element :acessar_btn, "input[id='acessarcti']"

    def acessar_sinterpol(usuario, senha)

        @usuario = usuario
        @senha = senha

        visit("/")

        usuario_input.click.set(@usuario)
        senha_input.click.set(@senha)
        acessar_btn.click
        click_link("SINTERPOL2")
        switch_to_window(windows.last)

    end

end