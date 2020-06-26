class DocumentosViagemPage < SitePrism::Page

#MAPEAMENTO TELA INCLUSÃO DOCUMENTOS DE VIAGEM
element :incluir_documento_viagem_btn, 'input[value="Incluir"]'
elements :numero_documento_input, 'input[name*="form"]'
elements :tipo_documento_select, 'select[name*="form"]'
elements :pais_emissor_select, 'select[name*="form"]'

#BOTÕES TELA INCLUSÃO
element :salvar_documento_btn, 'input[value="Salvar"]'
element :cancelar_documento_btn, 'input[value="Cancelar"]'
element :limpar_documento_btn, 'input[value="Limpar"]'
element :ok_documento_btn, 'input[value="OK"]'

#MAPEAMENTO TELA PESQUISA DOCUMENTOS DE VIAGEM
elements :numero_documento_pesquisar, 'input[name*="form:"]'
elements :pais_emissor_select_pesquisar, 'input[name*="form"]'
elements :tipo_documento_select_pesquisar, 'input[name*="form"]'
element :pesquisar_documento_btn, 'input[value="Pesquisar"]'
element :excluir_documento_icone, 'input[title="Excluir"]'
element :excluir_documento_button, 'input[title="Excluir"]'


def incluir_documento_viagem
    incluir_documento_viagem_btn.click

    @numero_documento = '12345'
    @tipo_documento = 'Business'
    @pais_emissor = 'Brasil'


    numero_documento_input[0].set(@numero_documento)
    tipo_documento_select[0].click.select(@tipo_documento)
    pais_emissor_select[1].click.select(@pais_emissor)

    salvar_documento_btn.click
    sleep(1)
    # ok_documento_btn.click

end


def pesquisar_documento_viagem

    @numero_documento = '12345'
    @tipo_documento = 'Business'
    @pais_emissor = 'Brasil'
    numero_documento_pesquisar[0].set(@numero_documento)
    pesquisar_documento_btn.click

end

def excluir_documento_viagem

    @numero_documento = '12345'
    @tipo_documento = 'Business'
    @pais_emissor = 'Brasil'

    numero_documento_pesquisar[0].set(@numero_documento)
    pesquisar_documento_btn.click

    excluir_documento_icone.click

    excluir_documento_button.click

    ok_documento_btn.click

    if(has_cancelar_documento_btn?(wait:2))
        cancelar_documento_btn.click
    end

    if(has_ok_documento_btn?(wait:2))
        ok_documento_btn.click
    end


end

end