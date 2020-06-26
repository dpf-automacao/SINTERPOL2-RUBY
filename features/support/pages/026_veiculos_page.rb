class VeiculosPage <SitePrism::Page

    #MAPEAMENTO TELA INCLUSAO VEICULOS
    element :incluir_veiculo_button, 'input[value="Incluir"]'
    element :fabricante_veiculo_input, 'input[name*="Fabricante"]'
    element :modelo_veiculo_input, 'input[name*="Modelo"]'
    element :cor_veiculo_input, 'input[name*="Cor"]'
    element :chassi_veiculo_input, 'input[name*="Chassi"]'
    element :ano_fabricacao_veiculo_input, 'input[id*="anoFabricacao"]'
    element :ano_registro_veiculo_input, 'input[name*="form:j_id209:j_id216"]'
    elements :motor_veiculo_input, 'input[name*="form"]'
    element :pais_veiculo_select, 'select[name*="form"]'

    #BOTÕES INCLUIR VEICULO
    element :salvar_veiculo_btn, 'input[value="Salvar"]'
    element :cancelar_veiculo_btn, 'input[value="Cancelar"]'
    element :limpar_veiculo_btn, 'input[value="Limpar"]'

    #MAPEAMENTO TELA INICIAL VEÍCULOS
    element :fabricante_veiculo_pesquisa, 'input[name="form:j_id128:j_id135"]'
    element :pesquisar_veiculo_btn, 'input[value="Pesquisar"]'

    #EXCLUIR VEICULO
    element :excluir_veiculo_btn, 'input[title="Excluir"]'
    element :ok_veiculo_btn, 'input[value="OK"]'
    element :cancelar_veiculo_btn, 'input[value="Cancelar"]'


    def incluir_veiculo

        incluir_veiculo_button.click

        @fabricante_veiculo = "Fabricante"
        @modelo_veiculo = "Modelo "
        @cor_veiculo = "Vermelho"
        @chassi_veiculo = 'ABC1234'
        @ano_fabricacao_veiculo = "2010"
        @ano_registro_veiculo = "2010"
        @motor_veiculo = "Motor"
        @pais_veiculo = "Brasil"
        
        fabricante_veiculo_input.click.set(@fabricante_veiculo)
        modelo_veiculo_input.click.set(@modelo_veiculo)
        cor_veiculo_input.click.set(@cor_veiculo)
        chassi_veiculo_input.click.set(@chassi_veiculo)
        ano_fabricacao_veiculo_input.click.set(@ano_fabricacao_veiculo)
        motor_veiculo_input[6].click.set(@motor_veiculo)
        pais_veiculo_select.click.select(@pais_veiculo)

        salvar_veiculo_btn.click
        sleep(1)

        ok_veiculo_btn.click

    end


    def pesquisar_veiculo

        @fabricante_veiculo = "Fabricante"

        fabricante_veiculo_pesquisa.click.set(@fabricante_veiculo)

        pesquisar_veiculo_btn.click

    
    end

    def excluir_veiculo

    pesquisar_veiculo
    excluir_veiculo_btn.click
    excluir_veiculo_btn.click
    ok_veiculo_btn.click

    if(has_cancelar_veiculo_btn?(wait:2))
        cancelar_veiculo_btn.click
    end

    if(has_ok_veiculo_btn?(wait:2))

        ok_veiculo_btn.click

    end


end


    



end