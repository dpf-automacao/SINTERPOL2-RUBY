require_relative "../helpers/file_helper.rb"

class NovoHomePage < SitePrism::Page

    include FileHelper


    element :num_registro_pesquisar, 'input[name*="campoNumeroRegistro"][type="text"]'
    element :pesquisar_button_novo, 'input[value="Pesquisar"]'
    element :responder_button_novo, 'input[value="Responder"]'
    element :vincular_button_novo, 'input[value="Vincular"]'
    element :desvincular_button_novo, 'input[value="Desvincular"]'
    element :arquivar_button_novo, 'input[value="Arquivar"]'
    element :desarquivar_button_novo, 'input[value="Desarquivar"]'
    element :enviar_aguardando_resposta_button_novo, 'input[value="Enviar p/ Aguardando Resposta"]'
    element :tramitar_button_novo, 'input[value="Tramitar"]'
    element :tramites_button_novo, 'input[value="Trâmites"]'

    #MAPEAMENTO BOTÕES TELA RESPONDER
    element :visualizar_button, 'input[value="Visualizar"]'
    element :salvar_button, 'input[value="Salvar"]'
    element :cancelar_button, 'input[id*="Cancelar"]'
    element :enviar, 'input[value="Enviar"]'
    element :sair_button, 'input[value="Sair"]'
    element :ok_button, "input[value='OK']"


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
    element :providencia_textarea, 'textarea[id*="Providencia"]'
    elements :assinatura_radio, 'input[name="nameRadioAssinatura"]'
    element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'

    #MAPEAMENTO TELA VINCULAR/DESVINCULAR DOCUMENTO
    element :registro_numero, 'input[id*="NumeroRegistro"]'
    element :assunto_vincular_input, 'input[name*="form:j_id59"]'
    element :radio_documento, 'input[name="groupRadio"]'
    element :confirmar_vinculo, 'input[value="Confirmar"]'
    element :ok_vinculo, 'input[id*="hideButtonWarn"]'
    element :pesquisar_vinculo, 'input[value="Pesquisar"]'

    #MAPEAMENTO ARQUIVAR/DESARQUIVAR DOCUMENTO
    element :justificativa_arquivar_textarea, 'textarea[class=""]'
    element :ok_arquivar, 'input[value="Confirmar"]'
    element :cancelar_button, 'input[value="Cancelar"]'
    element :justificativa_desarquivar_textarea, 'textarea[id*="Justificativa"]'


    #MAPEAMENTO TELA TRAMITAR
    element :usuario_tramitar_input, 'input[id*="campoPessoaDestino:inputText_suggestionPessoaDestino"]'
    element :autocomplete_sugestion, 'td[class*="dr-sb-cell-padding rich-sb-cell-padding richfaces_suggestionSelectValue"]'
    element :providencia_textarea_tramitar, 'textarea[class=""]' 
    element :confirmar_button, 'input[value="Confirmar"]'
    element :autocomplete_sugestion, 'td[class*="dr-sb-cell-padding rich-sb-cell-padding richfaces_suggestionSelectValue"]'

    #CRIR COPIA
    elements :mensagem_img, "a[id*='agemId'][href='#'] img"
    elements :criar_copia_input, 'input[value="Criar cópia"]'
    element :tramites_copia_button_novo, 'input[value="Trâmites"]'
    element :responsavel_envio_copia, 'select[name*="ResponsavelPeloEnvioDaMensagem"]'
    elements :assinatura_copia_radio, 'input[name*="RadioAssinatura"]'
    element :providencia_copia_input, 'textarea[id*="DescricaoProvidencia"]'
    element :numero_mensagem_copia_div, 'div[id*="numeroSigla"]'



    def cancelar_botao
        cancelar_button.click
    end

    def ok_bottao
        ok_button.click
    end

    def anexar_arquivo 
        
        puts 'Anexando arquivo'

        anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/TESTE_PDF.pdf")
        sleep(0.1)

    end

    def pesquisar_documento_novo_home

        @num_documento = recuperar_dados("features/arquivos/numero_documento.txt");

        num_registro_pesquisar.click.set(@num_documento[0].chomp)
        sleep(1)
        pesquisar_button_novo.click
    end

    def responder_novo_home

        responder_button_novo.click

        puts 'Respondendo documento'
        
        @tipo = "E-mail"
        @unidade = "INTERPOL/CGCI/DIREX/PF"
        @sigilo = "Ostensivo"
        @email = "meramos@stefanini.com"
        @assunto = "Teste"
        @texto = "Teste"
        @responsavel_envio = "CARLOS BARROSO MARTINS"
        @providencia = "Teste"

        sleep(0.5)
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
        sleep(0.5)
        anexar_arquivo
        sleep(0.5)
        assunto_textarea.set(@assunto)
        texto_textarea.set(@texto)
        sleep(0.5)
        responsavel_envio_select.select(@responsavel_envio)
        sleep(0.5)
        assinatura_radio[0].click
        sleep(0.5)
        providencia_textarea.set(@providencia)
        wait_until_aguardar_load_invisible
        salvar_button.click
        ok_button.click
        enviar.click
        wait_until_aguardar_load_invisible
        sleep(3)
        ok_button.click

        puts 'Mensagem Criada'

        sleep(2)

    end

    def vincular_novo_home
  
        sleep(3)
  
  
        @numero = "504947-4"
  
          if (has_desvincular_button_novo?(wait:3))

            desvincular_novo_home

            else 

                puts 'Vinculando documento'
              
          end
  
        vincular_button_novo.click
        registro_numero.click.set(@numero)
        pesquisar_vinculo.click
        wait_until_aguardar_load_invisible
        radio_documento.click
        sleep(1)
  
        confirmar_vinculo.click
        wait_until_aguardar_load_invisible
        ok_bottao
        sleep(1)
  
      end

      def desvincular_novo_home
        sleep(3)

        desvincular_button_novo.click

        puts 'Desvinculando Documento'

        confirmar_vinculo.click
        wait_until_aguardar_load_invisible
        ok_bottao
        sleep(1)

    end

    def arquivar_novo_home
        
        # if (has_desarquivar_button_novo?(wait:5))

        #     desarquivar_novo_home

        #         puts 'Não foi possível Arquivar, pois o documento encontra-se já arquivado ou vinculado'
   
        #     elsif (has_desvincular_button_novo?(wait:5))

        #             desvincular_novo_home

        #          else 

        #             puts 'Arquivando documento'

        # end

        arquivar_button_novo.click

        @justificativa_arquivar = "ARQUIVANDO DOCUMENTO"

        justificativa_arquivar_textarea.click.set(@justificativa_arquivar)
    
        ok_arquivar.click

        wait_until_aguardar_load_invisible

        ok_bottao

        puts 'Documento Arquivado'

        sleep(1)

    end

    def desarquivar_novo_home

        # if (has_arquivar_button_novo?(wait:5))

        #     arquivar_novo_home
            
        #         puts 'Não foi possível Desarquivar, pois o documento encontra-se já desarquivado'

        #     else 
        #         puts 'Desarquivando Documento'

        # end

        desarquivar_button_novo.click

        @justificativa_desarquivar = "Desarquivando Documento!"

        justificativa_desarquivar_textarea.set(@justificativa_desarquivar)

        ok_arquivar.click

        wait_until_aguardar_load_invisible

        ok_bottao

        puts 'Documento Desarquivado'

        sleep(1)

    end


    def tramitar_novo_home

        @usuario_tramitar = "CARLOS BARROSO"
        @providencia = "TESTE TRAMITAR"

        tramitar_button_novo.click

        puts 'Tramitando Documento'

        usuario_tramitar_input.click.set(@usuario_tramitar)
        autocomplete_sugestion.click

        sleep(0.5)
        providencia_textarea_tramitar.click.set(@providencia)
        confirmar_button.click
        sleep(2)
        wait_until_aguardar_load_invisible

        puts 'Documento Tramitado'

        sleep(1)

    end

    def criar_copia_documento_home

        tramites_copia_button_novo.click
        mensagem_img[0].click
        sleep(1)
        criar_copia_input[0].click

        puts 'Criando Cópia de Documento'

        @responsavel_copia = "CARLOS BARROSO MARTINS"
        @providencia_copia = "Providencia da cópia da mensagem"
           
        # responsavel_envio_copia.select(@responsavel_copia)
        assinatura_copia_radio[0].click
        providencia_copia_input.click.set(@providencia_copia)
        salvar_button.click

        @numero_mensagem_copia = numero_mensagem_copia_div.text
        @numero_mensagem_copia = @numero_mensagem_copia[0,10]
        gravar_dados("features/arquivos/numero_mensagem_copia.txt", @numero_mensagem_copia)
        ok_button.click

        puts 'Cópia de Documento Criada'

        sair_button.click

    end
   
end