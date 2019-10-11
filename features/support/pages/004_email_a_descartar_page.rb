class EmailADescartarPage < SitePrism::Page


    element :unidade_lotacao_enc_select, "select[id*='comboLotacoes']"

    def selecionar_unidade_enc
        unidade_lotacao_enc_select.select
    end


end