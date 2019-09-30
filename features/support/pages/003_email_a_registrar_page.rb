class EmailARegistrarPage < SitePrism::Page


    element :caixa_de_entrada_img, "td[id*='PastaEmail[id = 81]'] img[src='/interpol/imagens/iconFolder.gif']"
    element :arquivar_btn, "input[value='Arquivar']"
    element :encaminhar_btn, "input[value='Encaminhar']"
    element :registrar_btn, "input[value='Registrar']"
    element :nao_registrar_btn, "input[value='Não Registrar']"
    element :mover_btn, "input[value='Mover']"
    element :ok_btn, "table[id*='modalWarnContentTable'] input[value='OK']"

    elements :detalhar_btn, "input[src='/interpol/imagens/ico_detalhar_cubo.gif']"

    def selecionar_caixa_de_entrada
        caixa_de_entrada_img.click
    end

    def confirmar
        binding.pry
        ok_btn.click
    end

    def selecionar_primeiro_registro
        detalhar_btn[0].click
    end

    def arquivar_email
        binding.pry
        arquivar_btn.click
    end

    def encaminhar_email
        encaminhar_btn.click
    end

    def registrar_email
        registrar_btn.click
    end

    def nao_registrar_email
        nao_registrar_btn.click
    end

    def mover_email
        mover_btn.click
    end

    
end