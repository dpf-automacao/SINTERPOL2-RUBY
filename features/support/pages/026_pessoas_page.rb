class PessoasPage <SitePrism::Page

    #MAPEAMENTO TELA INCLUSAO PESSOAS
    element :incluir_pessoa_btn, 'input[value="Incluir"]'
    element :nome_pessoa_input, "input[name*='j_id135:j_id142']"
    element :sobrenome_pessoa_input, "input[id*='inputTextSobrenome']"
    element :data_nasc_pessoa_input, "input[id*='j_id178InputDate']"
    element :pais_origem_select, 'select[name*="j_id187:j_id198"]'
    element :nome_mae_pessoa, 'input[name*="j_id208:j_id215"]'
    element :nome_pai_pessoa, 'input[name*="j_id224:j_id231"]'
    element :sexo_pessoa_select, 'select[name*="j_id240:j_id251"]'

    #MAPEAMENTO DOCUMENTOS DA PESSOA
    element :tipo_documento_pessoa, "select[onchange*='manterPessoa/inserirPessoa.seam']"
    element :numero_documento_pessoa, 'input[id*="registro"]'
    element :data_emissao_documento_pessoa, "input[id*='j_id326InputDate']"
    element :pais_emissao_documento_pessoa, 'select[name*="j_id335:j_id346"]'
    element :local_emissao_documento_pessoa, "input[name*='j_id355:j_id362']"
    element :orgao_emissor_documento_pessoa, "input[name*='j_id370:j_id377']"

    #BOTÕES TELA INCLUIR PESSOA
    element :adicionar_documento_btn, 'input[value="Adicionar"]'
    element :salvar_pessoa_btn, 'input[value="Salvar"]'
    element :cancelar_pessoa_btn, 'input[value="Cancelar"]'
    element :limpar_pessoa_btn, 'input[value="Limpar"]'
    element :ok_pessoa_btn, 'input[value="OK"]'

    #TELA INICIAL PESSOAS
    elements :nome_pessoa_pesquisar, 'input[name*="form"]'
    elements :sobrenome_pessoa_pesquisar, 'input[name*="form"]'
    element :pesquisar_pessoa_btn, 'input[value="Pesquisar"]'
    element :excluir_pessoa_btn, 'input[title="Excluir"]'
    element :ok_pessoa_btn, 'input[value="OK"]'
    element :cancelar_pessoa_btn, 'input[value="Cancelar"]'

    #MAPEAMENTO TELA EXCLUSÃO


    def incluir_pessoa
        
        incluir_pessoa_btn.click

        @nome_pessoa = 'Pessoa'
        @sobrenome_pessoa = 'Teste'
        @data_nasc_pessoa = '01/01/1993'
        @pais_origem = 'Brasil'
        @nome_mae = 'Mãe Pessoa'
        @nome_pai = 'Pai Pessoa'
        @sexo_pessoa = 'Masculino'

        @tipo_documento = 'PAS'
        @numero_documento = '1234567890'
        @data_emissao_documento = '01/01/2010'
        @pais_emissao_documento = 'Brasil'
        @local_emissao_documento = 'Brasil'
        @orgao_emissor_documento = 'SSP'

        nome_pessoa_input.set(@nome_pessoa)
        sobrenome_pessoa_input.set(@sobrenome_pessoa)
        data_nasc_pessoa_input.click.set(@data_nasc_pessoa)
        pais_origem_select.select(@pais_origem)
        nome_mae_pessoa.set(@nome_mae)
        nome_pai_pessoa.set(@nome_pai)
        sexo_pessoa_select.select(@sexo_pessoa)
        tipo_documento_pessoa.click.select(@tipo_documento)

        numero_documento_pessoa.click.set(@numero_documento)
        data_emissao_documento_pessoa.click.set(@data_emissao_documento)
        pais_emissao_documento_pessoa.click.select(@pais_emissao_documento)
        local_emissao_documento_pessoa.click.set(@local_emissao_documento)
        orgao_emissor_documento_pessoa.click.set(@orgao_emissor_documento)

        adicionar_documento_btn.click
        salvar_pessoa_btn.click
        ok_pessoa_btn.click

    end

    def pesquisar_pessoa

        @nome_pessoa = 'Pessoa'
        @sobrenome_pessoa = 'Teste'

        nome_pessoa_pesquisar[0].set(@nome_pessoa)
        sobrenome_pessoa_pesquisar[1].set(@sobrenome_pessoa)

        pesquisar_pessoa_btn.click

    end


    def excluir_pessoa

        @nome_pessoa = 'Pessoa'
        @sobrenome_pessoa = 'Teste'

        nome_pessoa_pesquisar[0].set(@nome_pessoa)
        sobrenome_pessoa_pesquisar[1].set(@sobrenome_pessoa)

        pesquisar_pessoa_btn.click

        excluir_pessoa_btn.click
        sleep(1)
        excluir_pessoa_btn.click
        sleep(1)
        ok_pessoa_btn.click

        if(has_cancelar_pessoa_btn?(wait:2))
            cancelar_pessoa_btn.click
        end
    
        if(has_ok_pessoa_btn?(wait:2))
            ok_pessoa_btn.click
        end


    end



end