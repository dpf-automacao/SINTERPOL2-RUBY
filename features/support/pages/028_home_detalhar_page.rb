require_relative "../helpers/file_helper.rb"

class DetalharHomepage < SitePrism::Page

    include FileHelper


#ELEMENTOS TELA HOME
element :num_registro_home_input, 'input[name*="campoNumeroRegistro"][type="text"]'
element :pesquisar_home_btn, 'input[id*="NumeroRegistro"]'
element :detalhar_home_btn, 'input[value="Detalhar"]'
element :detalhar_form_cabecalho, "form[id='form'][action*='detalharDocumento']"
element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'
element :ok_button, "input[value='OK']"

#MAPEAMENTO BOTÕES DETALHAR DOCUMENTOS
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

#MAPEAMENTO BOTÕES TELA RESPONDER
element :visualizar_button, 'input[value="Visualizar"]'
element :salvar_button, 'input[value="Salvar"]'
element :cancelar_button, 'input[id*="Cancelar"]'
element :enviar, 'input[value="Enviar"]'
element :sair_button, 'input[value="Sair"]'

#MAPEAMENTO TELA ALTERAR DOCUMENTOS
element :numero_input, 'input[id*="codigoRegistro"]'
element :tipo_documento, 'select[id*="comboTipoDocumento"]'
element :origem_input, 'input[id*="nomeOrigem"]'
elements :pais_select, 'select[class=""]'
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

#MAPEAMENTO ELEMENTOS DA TELA INCLUIR DOCUMENTO
element :numero_input, 'input[id*="codigoRegistro"]'
element :referencia_input, 'input[id*="numeroReferencia"]'
element :origem_input, 'input[id*="nomeOrigem"]'
element :remetente_input, 'input[id*="enderecoEletronicoRemetente"]'
element :destinatario_input, 'input[id*="enderecoEletronicoDestinario"]'
element :pais_origem_option, 'select[name*="form:j_id248:j_id259"]'
element :projeto_option, 'select[name*="form:j_id287:j_id298"]'
element :sigilo_select, 'select[id*="comboSigilo"]'
element :tipo_registro_select, 'select[id*="comboRegistro"]'
element :data_documento_input, 'input[id*="dataDocumentoInputDate"]'
element :tipo_documento_select, 'select[id*="comboTipoDocumento"]' 
element :assunto_input, 'input[id*="assunto"]'
element :conteudo_text, 'textarea[name*="form"]'
element :numero_doc_td, "table[id*='modalSucessoContentTable'] td[valign='middle']"
element :incluir_button, 'input[value="Incluir"]'

#VERIFICAÇÃO TELA INCLUIR DOCUMENTO
element :nao_button, 'input[value="Não"]'
element :sim_button, 'input[value="Sim"]'

#MAPEAMENTO TELA TRAMITAR
element :usuario_tramitar_input, 'input[id*="campoPessoaDestino:inputText_suggestionPessoaDestino"]'
element :autocomplete_sugestion, 'td[class*="dr-sb-cell-padding rich-sb-cell-padding richfaces_suggestionSelectValue"]'
element :providencia_textarea_tramitar, 'textarea[class=""]' 
element :confirmar_button, 'input[value="Confirmar"]'
element :autocomplete_sugestion, 'td[class*="dr-sb-cell-padding rich-sb-cell-padding richfaces_suggestionSelectValue"]'

#CRIAR COPIA
elements :mensagem_img, "a[id*='agemId'][href='#'] img"
elements :criar_copia_input, 'input[value="Criar cópia"]'
element :tramites_copia_button, 'input[value="Trâmites"]'
element :responsavel_envio_copia, 'select[name*="ResponsavelPeloEnvioDaMensagem"]'
elements :assinatura_copia_radio, 'input[name*="RadioAssinatura"]'
element :providencia_copia_input, 'textarea[id*="DescricaoProvidencia"]'
element :numero_mensagem_copia_div, 'div[id*="numeroSigla"]'

#ADICIONAR ANEXO
element :btn_remover_anexo, 'tbody a[class="botaoRemover"]'
element :checkbox_anexo, 'input[type="checkbox"][onchange*="regionMensagem"]'


    def anexar_arquivo 
        
        puts 'Anexando arquivo'

        anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/TESTE_PDF.pdf")
        sleep(0.1)

    end

    def pesquisar_documento_home

        @num_documento = recuperar_dados("features/arquivos/numero_documento.txt");

        num_registro_home_input.click.set(@num_documento[0].chomp)
        sleep(1)
        pesquisar_home_btn.click
        sleep(1)
        detalhar_home_btn.click
        # wait_until_detalhar_form_cabecalho_visible

    end

    def responder_home

        responder_button.click

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
# binding.pry
#             puts "Selecionando anexos"
#             @indice = 0
#             @checkbox = checkbox_anexo.size

#             loop do 
#                 @indice += 1
#                 puts "#{@checkbox}"
#                 checkbox_anexo.check
#                 sleep(3)
#                 if @indice == 3
#                 break
#                 end
#               end 

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


    def alterar_home
        sleep(2)

        alterar_button.click

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
        projeto_select.click.select(@projeto)
        sigilo_select.click.select(@sigilo)
        tipo_registro_select.click.select(@tipo_registro)

        alterar_button.click
        wait_until_aguardar_load_invisible
        sleep(2)

        ok_button.click

        puts 'Documento Alterado'

    end


    def vincular_home
  
        sleep(3)
  
        @numero = "504947-4"
        @assunto = "E-MAIL Nº 9526/2018-RR/INTERPOL"
  
          if (has_desvincular_button?(wait:3))

            desvincular_home

            else 

                puts 'Vinculando documento'
              
            end
  
        vincular_button.click
        registro_numero.click.set(@numero)
        pesquisar_vinculo.click
        wait_until_aguardar_load_invisible
        radio_documento.click
        sleep(1)
        confirmar_vinculo.click
        wait_until_aguardar_load_invisible
        ok_vinculo.click
        sleep(1)
      end


      def desvincular_home
        sleep(3)

        desvincular_button.click

        puts 'Desvinculando Documento'

        confirmar_vinculo.click
        wait_until_aguardar_load_invisible
        ok_vinculo.click
        sleep(1)

    end


    def arquivar_home
        
        if (has_desarquivar_button?(wait:5))

            desarquivar_home

                puts 'Não foi possível Arquivar, pois o documento encontra-se já arquivado ou vinculado'
   
            elsif (has_desvincular_button?(wait:5))

                    desvincular_home

                 else 

                    puts 'Arquivando documento'

        end

        arquivar_button.click

        @justificativa_arquivar = "ARQUIVANDO DOCUMENTO"

        justificativa_arquivar_textarea.click.set(@justificativa_arquivar)
    
        ok_arquivar.click

        wait_until_aguardar_load_invisible

        ok_button.click

        puts 'Documento Arquivado'

        sleep(1)

    end

    def desarquivar_home

        if (has_arquivar_button?(wait:5))

            arquivar_home
            
                puts 'Não foi possível Desarquivar, pois o documento encontra-se já desarquivado'

            else 
                puts 'Desarquivando Documento'

        end

        desarquivar_button.click

        @justificativa_desarquivar = "Desarquivando Documento!"

        justificativa_desarquivar_textarea.set(@justificativa_desarquivar)

        ok_arquivar.click

        wait_until_aguardar_load_invisible

        ok_button.click

        puts 'Documento Desarquivado'

        sleep(1)

    end


    #METODO PARA INCLUIR DOCUMENTO (registros > documentos recebidos)
    def inclusao_documento_para_tramitar

        incluir_button.click

        puts 'Incluindo Documento'

        @numero = '000'
        @referencia = ''
        @origem = 'Interpol PF'
        @remetente = 'meramos@stefanini.com'
        @destinatario = 'teste.scgpci@dpf.gov.br'
        @tipo_documento = 'E-mail'
        @pais_origem = 'Espanha'
        @projeto = 'AMERIPOL'
        @data_documento = '23-09/2019'
        @sigilo = 'Ostensivo'
        @tipo_registro = 'Administrativo'
        @assunto = "Teste Automação"
        @conteudo = "Automatizando submenu Documentos Recebidos."

        puts 'Preenchendo informações de inclusão de novo documento'

        numero_input.click.set(@numero)
        sleep(0.5)
        referencia_input.click.set(@referencia)
        sleep(0.5)
        origem_input.click.set(@origem)
        sleep(0.5)
        remetente_input.click.set(@remetente)
        sleep(0.5)
        destinatario_input.click.set(@destinatario)
        sleep(0.5)
        tipo_documento_select.select(@tipo_documento)
        sleep(0.5)
        pais_origem_option.select(@pais_origem)
        sleep(0.5)
        projeto_option.select(@projeto)
        sleep(0.5)
        data_documento_input.click.set(@data_documento)
        sleep(0.5)
        sigilo_select.select(@sigilo)
        sleep(0.5)
        tipo_registro_select.select(@tipo_registro)
        sleep(0.5)
        assunto_input.click.set(@assunto)
        sleep(0.5)
        conteudo_text.click.set(@conteudo)
        salvar_button.click
        sleep(5)
        @numero_documento = numero_doc_td.text
        @numero_documento = @numero_documento[17,14]
        gravar_dados("features/arquivos/numero_documento.txt", @numero_documento)
        nao_button.click

        puts 'Novo Documento Incluído com sucesso'

    end


    def tramitar_home

        @usuario_tramitar = "CARLOS BARROSO"
        @providencia = "TESTE TRAMITAR"

        pesquisar_documento_home
        tramitar_button.click

        puts 'Tramitando Documento'

        usuario_tramitar_input.click.set(@usuario_tramitar)
        autocomplete_sugestion.click

        sleep(0.5)
        providencia_textarea_tramitar.click.set(@providencia)
        confirmar_button.click
        sleep(2)
        wait_until_aguardar_load_invisible
        ok_button.click

        puts 'Documento Tramitado'

        sleep(1)

    end

    def criar_copia_documento

        tramites_copia_button.click
        mensagem_img[0].click
        sleep(1)
        criar_copia_input[0].click

        puts 'Criando Cópia de Documento'

        @responsavel_copia = "CARLOS BARROSO MARTINS"
        @providencia_copia = "Providencia da cópia da mensagem"
           
        responsavel_envio_copia.select(@responsavel_copia)
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