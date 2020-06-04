require_relative "../helpers/file_helper.rb"

class DocumentosRecebidosPage < SitePrism::Page

include FileHelper

    #MAPEAMENTO BOTÕES DE TELA DOCUMENTOS RECEBIDOS
    element :incluir_button, 'input[value="Incluir"]'
    element :limpar_button, 'input[value="Limpar"]'
    element :pesquisar_button, 'input[value="Pesquisar"]'


    #MAPEAMENTO BOTÕES DE TELA ICLUIR DOCUMENTOS
    element :incluir_pessoa_button, 'input[value="Incluir Pessoa"]'
    element :incluir_doc_viagem_button, 'input[value="Incluir Doc. Viagem"]'
    element :incluir_arma_button, 'input[value="Incluir Arma"]'
    element :incluir_veiculo_button, 'input[value="Incluir Veículo"]'
    element :salvar_button, 'input[value="Salvar"]'
    element :cancelar_button, 'input[value="Cancelar"]'


    #MAPEAMENTO ELEMENTOS DA TELA INCLUIR DOCUMENTO
    element :numero_input, 'input[id*="codigoRegistro"]'
    element :referencia_input, 'input[id*="numeroReferencia"]'
    element :origem_input, 'input[id*="nomeOrigem"]'
    element :remetente_input, 'input[id*="enderecoEletronicoRemetente"]'
    element :destinatario_input, 'input[id*="enderecoEletronicoDestinario"]'
    element :pais_origem_option, 'select[name*="form:j_id250:j_id261"]'
    element :projeto_option, 'select[name*="form:j_id289:j_id300"]'
    element :sigilo_select, 'select[id*="comboSigilo"]'
    element :tipo_registro_select, 'select[id*="comboRegistro"]'
    element :data_documento_input, 'input[id*="dataDocumentoInputDate"]'
    element :tipo_documento_select, 'select[id*="comboTipoDocumento"]' 
    element :assunto_input, 'input[id*="assunto"]'
    element :conteudo_text, 'textarea[name*="form"]'
    element :numero_doc_td, "table[id*='modalSucessoContentTable'] td[valign='middle']"
    
    #VERIFICAÇÃO DE VINCULAÇÃO DA TELA INCLUIR DOCUMENTO
    element :nao_button, 'input[value="Não"]'
    element :sim_button, 'input[value="Sim"]'

    
    #MAPEAMENTO BOTÕES TELA MENSAGEM ST
    element :status_todos, 'input[checked="checked"]'
    element :status_enviada, 'input[value="EN"]'
    element :status_nao_enviada, 'input[value="NE"]'
    element :periodo_inicial, 'input[id*="dataInicioInputDate"]'
    element :periodo_final, 'input[id*="dataFimInputDate"]'
    element :enviar_button, 'input[value="Enviar"]'
    element :voltar_button, 'input[value="Voltar"]'
    element :mensagem_st_numero, 'th[id*="form:dataTable:j_id174header"]'
    element :detalhar_st, 'input[src="/interpol/imagens/ico_detalhar_cubo.gif"]'
    element :ok_button, 'input[id*="ButtonWarn"]'


    #MAPEAMENTO ELEMENTOS DA TELA INCLUIR MENSAGEM ST
    element :nossa_referencia_input, 'input[name*="form:j_id129"]'
    element :referencia_cgci_input, 'input[name*="form:j_id135"]'
    element :prioridade_radio, 'input[value="U"]'
    element :restricao_divulgacao_radio, 'input[value="S"][onchange*="manterDroga"]'
    element :restricao_divulgacao_radio_sem, 'input[value="N"][onchange*="manterDroga"]'
    element :pais_restricao_combo, 'select[id*="comboPaisRestricao"]'
    element :adicionar_pais, 'a[id*="AdicionarPaisesRestricao"]'
    elements :divulgar_europol_radio, 'input[value="N"]'
    elements :divulgar_europol_radio_sim, 'input[value="S"]' #indice [1]
    element :unidade_origem_combo, 'select[id*="comboUnidade"]'
    element :data_ocorrido_input, 'input[id*="InputDate"]'
    element :lugar_ocorrencia_span, 'textarea[onblur*="limitaTamanho(this , 150)"]'
    element :tipo_droga_combo, 'select[id*="TipoDroga"]'
    element :quantidade_droga_input, 'input[id*="QuantidadeDroga"]'
    element :unidade_medida_combo, 'select[id*="comboTipoMedida"]'
    element :total_capsulas_input, 'input[id*="NumeroTotalUnidades"]'
    element :marcacoes_logo_droga_select, 'select[id*="MarcasLogos"]'
    element :logo_droga_textarea, 'textarea[onblur="limitaTamanho(this , 999)"]'
    elements :identificacao_envolvidos_textarea, 'textarea[onblur*="limitaTamanho(this , 800)"]'
    element :metodo_transporte_combo, 'select[id*="MetodoTransporteDroga"]'
    elements :itinerario_input, 'input[type="text"]'
    elements :metodo_ocultacao_textarea, 'textarea[onblur="limitaTamanho(this , 800)"]'
    elements :informacao_adicional_textarea, 'textarea[onblur="limitaTamanho(this , 800)"]'
    elements :texto_livre_textarea, 'textarea[onblur="limitaTamanho(this , 800)"]'
    element :numero_mensagem_div, 'div[id*="form:j_id141"] span[class="value   "]'
    element :nome_usuario_div, 'div[id*="form:j_id128"] label[class="name"]'


    element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'


    def botao_nao
        nao_button.click
    end

    def botao_ok
        ok_button.click
    end

    def enviar_botao
        enviar_button.click
    end


    #METODO PARA INCLUIR DOCUMENTO (registros > documentos recebidos)
    def preencher_inclusao_documento
        incluir_button.click

        @numero = '000'
        @referencia = ''
        @origem = 'Interpol PF'
        @remetente = 'meramos@stefanini.com'
        @destinatario = 'teste.scgpci@dpf.gov.br'
        @tipo_documento = 'E-mail'
        @pais_origem = 'Espanha'
        @projeto = 'TRADUÇÃO'
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
        sleep(3)

    end



    #METODO PARA INCLUIR MENSAGEM ST (registros > mensagem st)
    def preencher_inclusao_mensagemst

        @pais_restricao = "Espanha"
        @unidade_origem = "INTERPOL/CGCI/DIREX/PF"
        @data_ocorrido = "01/09/2019"
        @lugar_ocorrencia = "Lugar Ocorrência"
        @tipo_droga = 'MORFINA'
        @quantidade_droga = "10000"
        @unidade_medida = 'GRAMA'
        @marcacoes_logo_droga = "Sim"
        @total_capsulas = "100"
        @logo_droga = "Marca Droga" 
        @identificacao_envolvidos = "Foram identificados 14 suspeitos durante a operação."
        @metodo_transporte = "Com"
        @itinerario = "Rio, São Paulo"
        @metodo_ocultacao = "Mala transportadora"
        @informacao_adicional = "Sem informação adicional."
        @texto_livre = "Não há informação aqui."
       
        #Clicar botão incluir mensagem st
        incluir_button.click

        puts 'Preenchendo informações de nova mensagem ST'

        prioridade_radio.click
        sleep(1)
        restricao_divulgacao_radio.click
        sleep(1)
        pais_restricao_combo.select(@pais_restricao)
        sleep(1)
        adicionar_pais.click
        sleep(0.5)
        divulgar_europol_radio[2].click
        sleep(0.5)
        unidade_origem_combo.select(@unidade_origem)
        sleep(0.5)
        data_ocorrido_input.click.set(@data_ocorrido)
        sleep(0.5)
        lugar_ocorrencia_span.set(@lugar_ocorrencia)
        sleep(0.5)
        tipo_droga_combo.select(@tipo_droga)
        sleep(0.5)
        quantidade_droga_input.set(@quantidade_droga)
        sleep(0.5)
        unidade_medida_combo.select(@unidade_medida)
        sleep(0.5)
        total_capsulas_input.set(@total_capsulas)
        sleep(0.5)
        marcacoes_logo_droga_select.select(@marcacoes_logo_droga)
        sleep(0.5)
        logo_droga_textarea.set(@logo_droga)
        sleep(0.5)
        identificacao_envolvidos_textarea[0].set(@identificacao_envolvidos)
        sleep(0.5)
        # metodo_transporte_combo.select.(@metodo_transporte)
        find('option[value="PR"]').select_option
        sleep(0.5)
        itinerario_input[5].set(@itinerario)
        sleep(0.5)
        metodo_ocultacao_textarea[1].set(@metodo_ocultacao)
        sleep(0.5)
        informacao_adicional_textarea[2].set(@informacao_adicional)
        sleep(0.5)
        texto_livre_textarea[3].set(@texto_livre)
        sleep(0.5)
        salvar_button.click
        sleep(2)
        @numero_mensagem = numero_mensagem_div.text
        @tamanho_msg = @numero_mensagem.size
        @numero_mensagem = @numero_mensagem[0,@tamanho_msg]
        gravar_dados("features/arquivos/numero_mensagem.txt", @numero_mensagem)
        enviar_button.click
        sleep(2)
        wait_until_aguardar_load_invisible
        botao_ok


    end

end