require_relative "../helpers/file_helper.rb"

class MensagemCorrigir < SitePrism::Page

    include FileHelper


    #MAPEAMENTO BOTÕES DE TELA DOCUMENTOS RECEBIDOS
    element :incluir_button, 'input[value="Incluir"]'
    element :limpar_button, 'input[value="Limpar"]'
    element :pesquisar_button, 'input[value="Pesquisar"]'

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
    
    #VERIFICAÇÃO DE VINCULAÇÃO DA TELA INCLUIR DOCUMENTO
    element :salvar_button, 'input[value="Salvar"]'
    element :cancelar_button, 'input[value="Cancelar"]'
    element :nao_button, 'input[value="Não"]'
    element :sim_button, 'input[value="Sim"]'

    #MAPEAMENTO PESQUISA DE DOCUMENTO
    element :num_registro_input, "input[type='text'][onblur*='consultarDocumento']"
    element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'
    element :responder_button, 'input[value="Responder"]'
    element :logout_img, 'img[src="/interpol/imagens/ico_sair.gif"]'
    element :sair_siseg, 'img[src="imagens/ico_sair.gif"]'

    #MAPEAMENTO TELA RESPONDER DOCUMENTO
    element :anexar_arquivo_btn, 'div div input[id="form:fileUpload:file"]'
    element :tipo_select, 'select[id*="form:j_id368:comboTipo"]'
    element :unidade_select, 'select[id*="comboUnidade"]'
    element :sigilo_select, 'select[id*="comboSigilo"]'
    element :email_input, 'input[id*="form:inputText_suggestionEmailDestinatario"]'
    element :autocomplete, 'td[class*="suggestionSelectValue"]'
    element :adicionar_destinatario, 'a[id*="commandLinkAdicionarDestinatario"]'
    element :assunto_textarea, 'textarea[id*="TextareaAssunto"]'
    element :texto_textarea, 'textarea[id*="decorate_campoTexto:campoTexto"]'
    element :responsavel_envio_select2, 'select[name*="campoResponsavelPeloEnvioDaMensagem:j_id"]'
    elements :assinatura_radio2, 'input[name="nameRadioAssinatura"]'
    element :providencia_textarea, 'textarea[id*="Providencia"]'
    element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'
    element :ok_button, 'input[value="OK"]'
    element :sair_button, 'input[value="Sair"]'
    element :enviar_button, 'input[value="Enviar"]'

    #MAPEAMENTO SOLICITAR CORREÇÃO
    element :aprovar_pasta, 'td[id*="form:tree:1:APROVAR::j_id121:text"]'
    element :campo_pesquisa_documento, 'input[name*="form:decorate_campoNumeroRegistroMensagem:j_id414"]'
    element :numero_mensagem_aprovar, 'a[id="form:dataTable:0:j_id430"]'
    element :solicitar_correcao_button, 'input[value="Solicitar Correção"]'
    element :providencia_correcao, 'textarea[class=""]'
    element :confirmar_providencia_button, 'input[value="Confirmar"]'

    #MAPEAMENTO PASTA CORRIGIR
    element :corrigir_pasta, 'td[id="form:tree:1:CORRIGIDA::j_id121:text"]'
    element :numero_mensagem_corrigir, 'a[id*="dataTable:0"]'
    element :corrigir_button, 'input[value="Corrigir"]'



    def logout
        logout_img.click
        wait_until_aguardar_load_invisible
    end

    def siseg_sair
        switch_to_window(windows.first)
        sair_siseg.click
    end

    def botao_nao
        nao_button.click
    end


    def botao_ok
        ok_button.click
    end


    def sair
        sair_button.click
    end


    def enviar
        enviar_button.click
    end


    #METODO PARA PESQUISAR UM DOCUMENTO
    def pesquisar_doc_analista

        puts 'Pesquisando documento'
        @num_documento_analista = recuperar_dados("features/arquivos/numero_documento_analista.txt");

        num_registro_input.click.set(@num_documento_analista[0].chomp)
        pesquisar_button.click

    end
    

    def anexar_arquivo 
        
        puts 'Anexando arquivo'

        anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/TESTE_PDF.pdf")
        sleep(0.1)
    
    end


    #METODO PARA ANALISTA INCLUIR DOCUMENTO (registros > documentos recebidos)
    def preencher_inclusao_documento_analista
        incluir_button.click

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
        @numero_documento_analista = numero_doc_td.text
        @numero_documento_analista = @numero_documento_analista[17,14]
        gravar_dados("features/arquivos/numero_documento_analista.txt", @numero_documento_analista)
        sleep(3)
        botao_nao
        #logout
    end


    #METODO PARA ANALISTA CRIAR UMA MENSAGEM
    def responder_documento_analista
        sleep (3)

        responder_button.click

        @responsavel_envio = "VERONIQUE"

        puts 'Respondendo documento'
        
        @tipo = "E-mail"
        @unidade = "INTERPOL/CGCI/DIREX/PF"
        @sigilo = "Ostensivo"
        @email = "meramos@stefanini.com"
        @assunto = "Teste"
        @texto = "Teste"
        @responsavel_envio = "VERONIQUE"
        @providencia = "Teste"
        sleep(0.5)
        tipo_select.select(@tipo)
        sleep(0.5)
        unidade_select.click.select(@unidade)
        sleep(1)
        sigilo_select.select(@sigilo)
        sleep(0.5)

        email_input.set(@email).send_keys(:tab)
        sleep(1)
        adicionar_destinatario.click
        wait_until_aguardar_load_invisible
        sleep(0.5)
        anexar_arquivo
        sleep(0.5)
        assunto_textarea.set(@assunto)
        texto_textarea.set(@texto)
        sleep(0.5)

        responsavel_envio_select2.select(@responsavel_envio)
        assinatura_radio2[0].click
        sleep(0.5)
        providencia_textarea.set(@providencia)
        salvar_button.click
        sleep(1)
        wait_until_aguardar_load_invisible
        botao_ok
        sair
        sleep(1)
    end


        #METODO PARA ADMIN SOLICITAR CORREÇÃO DA MENSAGEM
        def solicitar_corecao
            aprovar_pasta.click

            @providencia = "Solicitando correção"

            @num_documento_analista = recuperar_dados("features/arquivos/numero_documento_analista.txt");
            
            puts 'Solicitando correção'
            campo_pesquisa_documento.click.set(@num_documento_analista[0].chomp)
            numero_mensagem_aprovar.click
            solicitar_correcao_button.click
            providencia_correcao.click.set(@providencia)
            confirmar_providencia_button.click
            wait_until_aguardar_load_invisible
            botao_ok
        end


        #METODO PARA ANALISTA CORRIGIR A MENSAGEM
        def corrigir_mensagem

            @responsavel_envio = "VERONIQUE"
            corrigir_pasta.click
            numero_mensagem_corrigir.click
            corrigir_button.click
            responsavel_envio_select2.select(@responsavel_envio)
            assinatura_radio2[0].click
            sleep(0.5)
            providencia_textarea.set(@providencia)
            salvar_button.click
        end

end