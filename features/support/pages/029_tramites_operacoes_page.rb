require_relative "../helpers/file_helper.rb"

class TramitesOperacoesPage < SitePrism::Page

    include FileHelper


#ELEMENTOS TELA HOME
element :num_registro_home_input, 'input[name*="campoNumeroRegistro"][type="text"]'
element :pesquisar_home_btn, 'input[id*="NumeroRegistro"]'
element :detalhar_home_btn, 'input[value="Detalhar"]'
element :detalhar_form_cabecalho, "form[id='form'][action*='detalharDocumento']"
element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'
element :ok_button, "input[value='OK']"
element :tramites_button_novo, 'input[value="Trâmites"]'

#MAPEAMENTO BOTÕES Tramites
element :responder_button, 'input[value="Responder"]'
element :arquivar_button, 'input[value="Arquivar"]'
element :desarquivar_button, 'input[value = "Desarquivar"]'
element :tramitar_button, 'input[value="Tramitar"]'
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
element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'

#MAPEAMENTO BOTÕES TELA RESPONDER
element :visualizar_button, 'input[value="Visualizar"]'
element :salvar_button, 'input[value="Salvar"]'
element :cancelar_button, 'input[id*="Cancelar"]'
element :enviar, 'input[value="Enviar"]' 
element :sair_button, 'input[value="Sair"]'
element :ok_button, "input[value='OK']"


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

#MAPEAMENTO ENVIAR PARA AGUARDANDO RESPOSTA
element :enviar_aguardando_resposta_button, 'input[value="Enviar p/ Aguardando Resposta"]'
element :justificativa_textarea, 'textarea[class=""]'
element :confirmar_button, 'input[value="Confirmar"]'
element :cancelar_button, 'input[value="Cancelar"]'


def anexar_arquivo 
        
    puts 'Anexando arquivo'

    anexar(anexar_arquivo_btn(visible: false)["id"], "features/arquivos/TESTE_PDF.pdf")
    sleep(0.1)

end

def pesquisar_documento_tramites

    @num_documento = recuperar_dados("features/arquivos/numero_documento.txt");

    num_registro_home_input.click.set(@num_documento[0].chomp)
    sleep(1)
    pesquisar_home_btn.click
    sleep(1)
    tramites_button_novo.click
    wait_until_aguardar_load_invisible

end


def responder_novo_tramites

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

    if(has_no_email_input?(wait:2))

        tipo_select.select(@tipo)
        unidade_select.(@unidade)
        email_input.click.set(@email)
    else
        puts 'Não foi possível habilitar o campo email'
    end

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


def arquivar_novo_tramites

    arquivar_button.click 

    @justificativa_arquivar = "ARQUIVANDO DOCUMENTO"

    justificativa_arquivar_textarea.click.set(@justificativa_arquivar)

    ok_arquivar.click

    wait_until_aguardar_load_invisible

    ok_button.click

    puts 'Documento Arquivado'

    sleep(1)

end

def desarquivar_novo_tramites

    desarquivar_button.click

    @justificativa_desarquivar = "Desarquivando Documento!"

    justificativa_desarquivar_textarea.set(@justificativa_desarquivar)

    ok_arquivar.click

    wait_until_aguardar_load_invisible

    ok_button.click

    puts 'Documento Desarquivado'

    sleep(1)

end

def tramitar_novo_tramites

    @usuario_tramitar = "CARLOS BARROSO"
    @providencia = "TESTE TRAMITAR"

    tramitar_button.click

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

def enviar_aguardando_resposta

    @justificativa = "Enviando do documento para aguardando resposta"

    if(has_enviar_aguardando_resposta_button?(wait:2))
        enviar_aguardando_resposta_button.click

    else
        puts 'O documento já encontra-se na pasta aguardando resposta.'

    end

    justificativa_textarea.click.set(@justificativa)
    confirmar_button.click
    wait_until_aguardar_load_invisible

    ok_button.click
end

end