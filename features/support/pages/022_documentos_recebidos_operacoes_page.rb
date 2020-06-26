require_relative "../helpers/file_helper.rb"

class OperacoesPage < SitePrism::Page

    include FileHelper

    #MAPEAMENTO TELA DE CONSULTA DOCUMENTOS RECEBIDOS
    element :pesquisar_registro_input2, 'input[id*="ptSiapro"]'
    element :pesquisar_button, 'input[value="Pesquisar"]'

    #BOTÕES GENÉRICOS
    element :load_carregar, 'body[onload="acaoCarregarPagina()"]'
    element :ok_button, 'input[value="OK"]'

    #MAPEAMENTO TELA ALTERAR DOCUMENTOS
    element :numero_input, 'input[id*="codigoRegistro"]'
    element :tipo_documento, 'select[id*="comboTipoDocumento"]'
    element :origem_input, 'input[id*="nomeOrigem"]'
    elements :pais_select, 'select[name*="form"]'
    elements :projeto_select, 'select[name*="form"]'
    element :sigilo_select, 'select[id*="comboSigilo"]'
    element :tipo_registro_select, 'select[id*="comboRegistro"]'
    element :alterar_button2, 'input[value="Alterar"]'

    #ICONES OPERAÇÕES TELA INICIAL DOCUMENTOS RECEBIDOS
    element :detalhar_icone, 'input[title="Detalhar"]'
    element :alterar_icone,  'input[title="Alterar"]'
    element :vincular_icone, 'input[title="Vincular"]'
    element :desvincular_icone, 'input[title="Desvincular"]'
    element :tramitar_icone, 'input[title="Tramitar"]'
    element :arquivar_icone, 'input[title="Arquivar"]'
    element :desarquivar_icone, 'input[title="Desarquivar"]'

    #MAPEAMENTO TELA VINCULAR/DESVINCULAR DOCUMENTO
    element :assunto_input, 'input[name*="form:j_id59"]'
    element :registro_numero, 'input[id*="NumeroRegistro"]'
    element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'
    element :confirmar_vinculo, 'input[value="Confirmar"]'
    element :ok_vinculo, 'input[id*="hideButtonWarn"]'
    element :pesquisar_vinculo, 'input[value="Pesquisar"]'
    element :radio_documento, 'input[name="groupRadio"]'

    #MAPEAMENTO ARQUIVAR/DESARQUIVAR DOCUMENTO
    element :justificativa_arquivar_textarea, 'textarea[class=""]'
    element :ok_arquivar, 'input[value="Confirmar"]'
    element :cancelar_button, 'input[value="Cancelar"]'
    element :justificativa_desarquivar_textarea, 'textarea[id*="Justificativa"]'


    def pesquisar_operacoes

        puts 'Pesquisando documento'
        
        @num_documento = recuperar_dados("features/arquivos/numero_documento.txt");

        pesquisar_registro_input2.click.set(@num_documento[0].chomp)
        sleep(1)

        pesquisar_button.click

        puts 'Detalhando Documento'

    end


    #MENU REGISTROS > DOCUMENTOS RECEBIDOS > PESQUISAR > ÍCONE ALTERAR
    def alterar_documento_operacoes
        sleep(3)

        alterar_icone.click

        @numero = "4444"
        @tipo = "E-mail"
        @origem = "alterando origem"
        @pais = "Espanha"
        @projeto = "AMEX"
        @sigilo =  "Ostensivo"
        @tipo_registro = "Policial"


        puts 'Alterando Documento'

        numero_input.click.set(@numero)
        tipo_documento.click.select(@tipo)
        origem_input.click.set(@origem)
        pais_select[1].click.select(@pais)
        projeto_select[2].click.select(@projeto)
        sigilo_select.click.select(@sigilo)
        tipo_registro_select.click.select(@tipo_registro)

        alterar_button2.click
        wait_until_load_carregar_invisible
        # ok_button.click

        puts 'Documento Alterado'

        sleep(3)

    end


    #MENU REGISTROS > DOCUMENTOS RECEBIDOS > PESQUISAR > ÍCONE VINCULAR
    def vincular_documento_operacoes
        sleep(3)
        vincular_icone.click

        puts 'Vinculando documento'
    
        sleep(3)


      @numero = "504947-4"

        # if (has_desvincular_button?(wait:10))
        #     desvincular_documento
        # else 
        #     puts '------------------------------->Documento encontra-se desvinculado atualmente'
        # end

      registro_numero.click.set(@numero)
      pesquisar_vinculo.click
      wait_until_aguardar_load_invisible

      radio_documento.click
      sleep(1)

      confirmar_vinculo.click
      wait_until_aguardar_load_invisible
    #   ok_vinculo.click

      puts 'Documento Vinculado'

      sleep(1)

    end


    #MENU REGISTROS > DOCUMENTOS RECEBIDOS > PESQUISAR > ÍCONE DESVINCULAR
    def desvincular_documento

        sleep(3)
        desvincular_icone.click

        puts 'Desvinculando Documento'

        confirmar_vinculo.click
        wait_until_aguardar_load_invisible
        # ok_vinculo.click

        puts 'Documento Desvinculado'

        sleep(1)

    end


    #ANEXO DE ARQUIVO
    def anexar_arquivo_operacoes
        
        puts 'Anexando arquivo'

        anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/TESTE_PDF.jpg")
        sleep(0.1)
    
    end

    
    #MENU REGISTROS > DOCUMENTOS RECEBIDOS > PESQUISAR > ÍCONE ARQUIVAR
    def arquivar_documento_operacoes

    sleep(3)

    arquivar_icone.click

        puts 'Arquivando documento'

        @justificativa_arquivar = "ARQUIVANDO DOCUMENTO"

        justificativa_arquivar_textarea.click.set(@justificativa_arquivar)
    
        ok_arquivar.click
        wait_until_aguardar_load_invisible
        # ok_button.click

        puts 'Documento Arquivado'

        sleep(1)


    end


    #MENU REGISTROS > DOCUMENTOS RECEBIDOS > PESQUISAR > ÍCONE DESARQUIVAR
    def desarquivar_documento_operacoes

        desarquivar_icone.click

        puts 'Desarquivando documento'

        @justificativa_desarquivar = "Desarquivando Documento!"

        justificativa_desarquivar_textarea.set(@justificativa_desarquivar)

        ok_arquivar.click

        wait_until_aguardar_load_invisible
        # ok_button.click

        puts 'Documento Desarquivado'

        sleep(1)

    end


end