class RelatoriosConsolidadoDocServidorPage < SitePrism::Page

    element :unidade_select, "select[name*='form']"
    element :gerar_relatorio_consolidado_btn, "input[value='Gerar']"
    element :erro_inesperado, "div[id='body']"


    def selecionar_unidade(unidade)
        sleep(2)
        unidade_select.click.select(unidade)
    end

    def gerar_relatorio_consolidado
        gerar_relatorio_consolidado_btn.click
        
        @indice = 0
        @valor = 10

        while(@indice < @valor) 
            if(erro_inesperado.text == "Ocorreu um erro inesperado no sistema. Por favor, contate o Administrador.")
                @indice = 10
            else
                puts "Mensagem diferente de: Ocorreu um erro inesperado no sistema. Por favor, contate o Administrador."
            end
            @indice += 1
        end

    end

end