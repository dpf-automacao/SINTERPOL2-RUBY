class EmailADescartarPage < SitePrism::Page


    element :unidade_lotacao_enc_select, "select[id*='comboLotacoes']"

    def selecionar_unidade_enc
        sleep(3)
        unidade_lotacao_enc_select.select
    end


end