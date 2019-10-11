class EmailARegistrarPage < SitePrism::Page

    # Mapeamentos para Menu E-mail (SUBMENU A REGISTRAR)

    element :caixa_de_entrada_img, "td[id*='PastaEmail[id = 81]'] img[src='/interpol/imagens/iconFolder.gif']"
    element :arquivar_btn, "input[value='Arquivar']"
    element :encaminhar_btn, "input[value='Encaminhar']"
    element :encaminhar_msg_btn, "div[id*='formEncaminhar'] input[value='Encaminhar']"
    element :registrar_btn, "input[value='Registrar']"
    element :nao_registrar_btn, "input[value='Não Registrar']"
    element :mover_btn, "input[value='Mover']"
    element :ok_btn, "table[id*='modalWarnContentTable'] input[value='OK']"

    # Mapeamento do Encaminhamento do Email

    element :remetente_select, "select[id*='formEncaminhar']"
    element :destinatario_input, "input[id*='inputText_suggestionEmailDestinatario']"
    element :adicionar_btn, "a[class='botaoAdicionar']"
    element :assunto_email_input, "input[name*='j_id396']"
    element :corpo_msg_input, "textarea[name*='formEncaminhar']"

    element :unidade_radio_btn, "input[type='radio'][value='true']"
    element :email_radio_btn, "input[type='radio'][value='false']"

    elements :detalhar_btn, "input[src='/interpol/imagens/ico_detalhar_cubo.gif']"

    # Mapeamento do Registro do E-mail

    element :numero_doc_input, "input[id*='decorate_decorateCodigoRegistro']"
    element :tipo_doc_input, "select[id*='decorate_campoTipoDocumento']"
    element :origem_input, "input[id*='decorate_nomeOrigemDecorate']"
    element :pais_origem_select, "select[name*='j_id248:j_id259']"
    element :uf_origem_select, "select[id*='decorate_campoUF']"
    element :projeto_select, "select[name*='j_id287:j_id298']"
    element :sigilo_select, "select[name*='decorate_campoSigilo']"
    element :tipo_registro_select, "select[name*='comboRegistro']"
    element :prazo_select, "select[name*='j_id416:j_id427']"
    element :assunto_input, "input[id*='assunto']"
    element :conteudo_input, "textarea[id*='TextArea']"

    def selecionar_caixa_de_entrada
        caixa_de_entrada_img.click
    end

    def confirmar
        ok_btn.click
        sleep(3)
    end

    def selecionar_primeiro_registro
        detalhar_btn[0].click
    end

    def arquivar_email
        arquivar_btn.click
    end

    def encaminhar_email
        encaminhar_btn.click
    end

    def registrar_email
        registrar_btn.click
    end

    def nao_registrar_email
        nao_registrar_btn.click
    end

    def mover_email
        mover_btn.click
    end

    # ENCAMINHAR EMAIL

    def encaminhar_mensagem_email
        encaminhar_msg_btn.click
    end

    def escolher_opcao_encaminhamento(opcao_enc)
        if(opcao_enc == "Email")
            email_radio_btn.click
        else
            unidade_radio_btn.click
        end
    end

    def selecionar_remetente
        # remetente_select.select(remetente)
        find("option[value='0']").click
    end

    def selecionar_destinatario(destinatario)
        destinatario_input.click.set(destinatario)
        sleep(3)
        destinatario_input.send_keys(:enter)
        sleep(1)
        destinatario_input.send_keys(:tab)
    end

    def adicionar_destinario_email
        sleep(3)
        adicionar_btn.click
    end

    def inserir_assunto(assunto)
        assunto_email_input.click.set(assunto)
    end

    def inserir_corpo_msg(corpo_msg)
        corpo_msg_input.click.set(corpo_msg)
    end

    
    # REGISTRAR EMAIL

    def preencher_numero(numero_doc)
        numero_doc_input.click.set(numero_doc)
    end

    def selecionar_tipo_doc(tipo_doc)
        tipo_doc_input.click.select(tipo_doc)
    end

    def preencher_origem(origem)
        origem_input.click.set(origem)
    end

    def selecionar_pais_origem(pais_origem)
        pais_origem_select.click.select(pais_origem)
    end

    def selecionar_uf_origem(uf_origem)
        if(has_uf_origem_select?(wait:2))
            uf_origem_select.click.select(uf_origem)
        else
            puts "UF de Origem desabilitada"
        end
    end

    def selecionar_projeto(projeto)
        projeto_select.click.select(projeto)
    end

    def selecionar_sigilo(sigilo)
        sigilo_select.click.select(sigilo)
    end

    def selecionar_tipo_registro(tipo_registro)
        tipo_registro_select.click.select(tipo_registro)
    end

    def selecionar_prazo(prazo)
        prazo_select.click.select(prazo)
    end
    
    def preencher_assunto(assunto)
        assunto_input.click.set(assunto)
    end

    def preencher_conteudo(conteudo)
        conteudo_input.click.set(conteudo)
    end
    
end