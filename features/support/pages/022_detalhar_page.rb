require_relative "../helpers/file_helper.rb"

class DetalharPage < SitePrism::Page

    include FileHelper

#MAPEAMENTO PESQUISA DE DOCUMENTO
element :pesquisar_registro_input1, 'input[id*="ptSiapro"]'
element :pesquisar_button, 'input[value="Pesquisar"]'
element :detalhar_button, 'input[value="Detalhar"]'
element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'

#MAPEAMENTO DETALHAR DOCUMENTOS RECEBIDOS
element :alterar_button, 'input[value="Alterar"]'
element :responder_button, 'input[value="Responder"]'
element :vincular_button, 'input[value="Vincular"]'
element :desvincular_button, 'input[value="Desvincular"]'
element :arquivar_button, 'input[value="Arquivar"]'
element :desarquivar_button, 'input[value = "Desarquivar"]'
element :enviar_aguardando_resposta, 'input[value="Enviar p/ Aguardando Resposta"]'
element :tramitar_button, 'input[value="Tramitar"]'
element :tramites_button, 'input[value="Trâmites"]'
element :cancelar_button, 'input[value="Cancelar"]'


#ICONES OPERAÇÕES TELA INICIAL DOCUMENTOS RECEBIDOS
element :detalhar_icone, 'input[title="Detalhar"]'
element :alterar_icone,  'input[title="Alterar"]'
element :vincular_icone, 'input[title="Vincular"]'
element :tramitar_icone, 'input[title="Tramitar"]'
element :arquivar_icone, 'input[title="Arquivar"]'
element :desarquivar_icone, 'input[title="Desarquivar"]'


#MAPEAMENTO ARQUIVAR/DESARQUIVAR DOCUMENTO
element :justificativa_textarea, 'textarea[class=""]'
element :confirmar_button, 'input[value="Confirmar"]'
element :cancelar_button, 'input[value="Cancelar"]'

element :ok_button, 'input[value="OK"]'


#MAPEAMENTO RESPONDER DOCUMENTO
element :responder_button, 'input[value="Responder"]'


#MAPEAMENTO TELA RESPONDER
element :anexar_arquivo_btn, 'div div input[id="form:fileUpload:file"]'
elements :tipo_select, 'select[id*="comboTipo"]'
element :unidade_select, 'select[id*="comboUnidade"]'
element :sigilo_select, 'select[id*="comboSigilo"]'
element :email_input, 'input[id*="form:inputText_suggestionEmailDestinatario"]'
element :autocomplete, 'td[class*="suggestionSelectValue"]'
element :adicionar_destinatario, 'a[id*="commandLinkAdicionarDestinatario"]'
element :assunto_textarea, 'textarea[id*="TextareaAssunto"]'
element :texto_textarea, 'textarea[id*="decorate_campoTexto:campoTexto"]'
element :responsavel_envio_select, 'select[name*="campoResponsavelPeloEnvioDaMensagem:j_id"]'
element :assinatura_radio, 'input[name="nameRadioAssinatura"]'
element :providencia_textarea, 'textarea[id*="Providencia"]'

#MAPEAMENTO BOTÕES TELA RESPONDER
element :visualizar_button, 'input[value="Visualizar"]'
element :salvar_button, 'input[id*="commandButtonSalvar"]'
element :cancelar_button, 'input[id*="Cancelar"]'
element :ok_button, 'input[id*="hideButtonWarn"]'
element :enviar, 'input[value="Enviar"]'
element :sair_button, 'input[value="Sair"]'


#MAPEAMENTO TELA ALTERAR DOCUMENTOS
element :numero_input, 'input[id*="codigoRegistro"]'
element :tipo_documento, 'select[id*="comboTipoDocumento"]'
element :origem_input, 'input[id*="nomeOrigem"]'
element :pais_select, 'select[name*="form:j_id24"]'
element :projeto_select, 'select[name*="j_id28"]'
element :sigilo_select, 'select[id*="comboSigilo"]'
element :tipo_registro_select, 'select[id*="comboRegistro"]'

#MAPEAMENTO BOTÕES TELA ALTERAR DOCUMENTO
element :pessoa_incluir, 'input[value="Incluir Pessoa"]'
element :doc_viagem_incluir, 'input[value="Incluir Doc. Viagem"]'
element :arma_incluir, 'input[value="Incluir Arma"]'
element :veiculo_incluir, 'input[value="Incluir Veículo"]'
element :anexar_arquivo, 'input[id*="upload"]'
element :alterar_salvar, 'input[id*="ButtonAlterar"]'


#MAPEAMENTO TELA VINCULAR/DESVINCULAR DOCUMENTO
element :registro_numero, 'input[id*="NumeroRegistro"]'
element :assunto_input, 'input[name*="form:j_id59"]'
element :radio_documento, 'input[name="groupRadio"]'

element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'

element :confirmar_vinculo, 'input[value="Confirmar"]'
element :ok_vinculo, 'input[id*="hideButtonWarn"]'
element :pesquisar_vinculo, 'input[value="Pesquisar"]'


#MAPEAMENTO TELA ARQUIVAR DOCUMENTO/DESARQUIVAR
element :justificativa_arquivar, 'textarea[class=""]'
element :ok_arquivar, 'input[name="form:hideButtonWarn"]'

element :justificativa_desarquivar, 'textarea[id*="Justificativa"]'


    def arquivar_documento
        
        if (has_desarquivar_button?(wait:10))

            desarquivar_documento
   
        elsif (has_desvincular_button?(wait:10))

             desvincular_documento

        else 
            puts 'Não foi possível desvincular'

        end

        # binding.pry
        arquivar_button.click

        @justificativa = "ARQUIVANDO DOCUMENTO"
    
        ok_arquivar.click
        wait_until_aguardar_load_invisible
        sleep(1)

    end

    def desarquivar_documento


        desarquivar_button.click

        @justificativa = "Desarquivando Documento!"

        justificativa_textarea.set(@justificativa)

        confirmar_button.click

        ok_arquivar.click

        wait_until_aguardar_load_invisible
        sleep(1)

    end


    def anexar_arquivo   

        anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/TESTE_ANEXAR.jpg")
        sleep(0.1)
    
    end


    def pesquisar
        
        @num_documento = recuperar_dados("features/arquivos/numero_documento.txt");

        pesquisar_registro_input1.click.set(@num_documento[0].chomp)
        sleep(1)

        puts 'Pesquisando Documento'

        pesquisar_button.click

        puts 'Detalhando Documento'

        detalhar_icone.click

    end


    def alterar_documento

        @numero = "4444"
        @tipo = "E-mail"
        @origem = "alterando origem"
        @pais = "Espanha"
        @projeto = "AMEX"
        @sigilo =  "Ostensivo"
        @tipo_registro = "Policial"

        alterar_button.click

        puts 'Alterando Documento'

        numero_input.click.set(@numero)
        tipo_documento.click.select(@tipo)
        origem_input.click.set(@origem)
        pais_select.click.select(@pais)
        projeto_select.click.select(@projeto)
        sigilo_select.click.select(@sigilo)
        tipo_registro_select.click.select(@tipo_registro)

        alterar_button.click
        sleep(3)

    end


    def responder_documento


        responder_button.click

        puts 'Preenchendo resposta'
        
        @tipo = "E-mail"
        @unidade = "INTERPOL/CGCI/DIREX/PF"
        @sigilo = "Ostensivo"
        @email = "meramos@stefanini.com"
        @assunto = "Teste"
        @texto = "Teste"
        @responsavel_envio = "CARLOS BARROSO MARTINS"
        @providencia = "Teste"

        tipo_select[0].select(@tipo)
        sleep(0.5)
        unidade_select.select(@unidade)
        sleep(0.5)
        sigilo_select.select(@sigilo)
        sleep(0.5)
        email_input.set(@email).send_keys(:tab)
        sleep(3)
        #autocomplete.click
        sleep(1)
        adicionar_destinatario.click
        aguardar_load
        sleep(0.5)
        anexar_arquivo
        sleep(0.5)
        assunto_textarea.set(@assunto)
        texto_textarea.set(@texto)
        sleep(0.5)
        responsavel_envio_select.select(@responsavel_envio)
        assinatura_radio.click
        sleep(0.5)
        providencia_textarea.set(@providencia)
        salvar_button.click
        sleep(3)
        wait_until_load_responder_invisible
        ok_button.click
        enviar.click
        sleep(3)

    end

    
    def vincular_documento

      @numero = "504947-4"
      @assunto = "E-MAIL Nº 9526/2018-RR/INTERPOL"


        if (has_desvincular_button?(wait:10))
            desvincular_documento
        else 
            puts 'Vinculando documento'
        end

      vincular_button.click

      registro_numero.click.set(@numero)
      assunto_input.click.set(@assunto)

      pesquisar_vinculo.click
      wait_until_aguardar_load_invisible

      radio_documento.click
      sleep(1)


      confirmar_vinculo.click
      wait_until_aguardar_load_invisible
      ok_vinculo.click
      sleep(1)

    end


    def desvincular_documento

        desvincular_button.click

        puts 'Desvinculando Documento'

        confirmar_vinculo.click
        wait_until_aguardar_load_invisible
        ok_vinculo.click
        sleep(1)

    end
















   #------------------------------- #MAPEAMENTO TELA RESPONDER (PELA HOME)------------------------#

    element :providencia_textarea2, 'textarea[id*="inputTextareaDescricaoProvidencia"]'

    #MAPEAMENTO BOTÕES TELA RESPONDER
    element :visualizar_button, 'input[value="Visualizar"]'
    element :salvar_button, 'input[id*="commandButtonSalvar"]'
    element :cancelar_button, 'input[id*="Cancelar"]'
    element :ok_button, 'input[id*="hideButtonWarn"]'
    element :enviar, 'input[value="Enviar"]'
    element :sair_button, 'input[value="Sair"]'


    #MAPEAMENTO PESQUISA DE DOCUMENTO
    element :pesquisar_registro_input, 'input[name*="campoNumeroRegistro:j"]'
    element :pesquisar_button, 'input[id*="ButtonPesquisar"]'
    element :detalhar_button, 'input[value="Detalhar"]'
    element :responder_button, 'input[value="Responder"]'
    element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'
    element :load_responder, 'body[onload="acaoCarregarPagina()"]'
    element :ok_button, 'input[id*="form:hideButtonWarn"]'


    def clicar_responder

        responder_button.click

    end

    def pesquisar_documento(num_documento)

  

        @num_documento = num_documento
        


        pesquisar_registro_input.click.set(@num_documento)
        sleep(1)

        puts 'Pesquisando Documento'

        pesquisar_button.click

        puts 'Detalhando Documento'

        detalhar_button.click

        puts 'Responder Documento'

        clicar_responder

    end


    def responder

        puts 'Preenchendo resposta'
        
        @tipo = "E-mail"
        @unidade = "INTERPOL/CGCI/DIREX/PF"
        @sigilo = "Ostensivo"
        @email = "meramos@stefanini.com"
        @assunto = "Teste"
        @texto = "Teste"
        @responsavel_envio = "CARLOS BARROSO MARTINS"
        @providencia = "Teste"

        tipo_select[0].select(@tipo)
        sleep(0.5)
        unidade_select.select(@unidade)
        sleep(0.5)
        sigilo_select.select(@sigilo)
        sleep(0.5)
        email_input.set(@email).send_keys(:tab)
        sleep(3)
        #autocomplete.click
        sleep(1)
        adicionar_destinatario.click
        aguardar_load
        sleep(0.5)
        anexar_arquivo
        sleep(0.5)
        assunto_textarea.set(@assunto)
        texto_textarea.set(@texto)
        sleep(0.5)
        responsavel_envio_select.select(@responsavel_envio)
        assinatura_radio.click
        sleep(0.5)
        providencia_textarea2.set(@providencia)
        salvar_button.click
        sleep(3)
        wait_until_load_responder_invisible
        ok_button.click
        enviar.click
        sleep(3)

    end

end