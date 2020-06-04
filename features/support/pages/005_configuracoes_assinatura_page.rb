class ConfiguracoesAssinaturaPage < SitePrism::Page

    element :incluir_assinatura_input, "input[id*='incluirAssinaturaButton']"
    element :usuario_assinatura_input, "input[id*='inputText_suggestionPessoaInclusao']"
    element :unidade_assinatura_input, "select[id*='formInserirAssinatura:decorate_campoUnidade']" 
    element :inserir_assinatura_textarea, "textarea[name*='formInserirAssinatura']"
    element :alterar_assinatura_textarea, "textarea[name*='formAlterarAssinatura']"
    element :salvar_insercao_assinatura_input, "input[id*='Inserir'][value='Salvar']"
    element :salvar_alteracao_assinatura_input, "input[id*='Alterar'][value='Salvar']"
    element :nome_usuario_input, "input[id*='inputText_fieldPessoa']"
    element :unidade_usuario_select, "select[id*='lotacao'][onchange*='pesquisarAssinatura']"
    element :correio_eletronico_check, "input[value='E'][type='checkbox']"
    element :status_ativo_radio, "input[type='radio'][value='true']"
    element :pesquisar_usuario_btn, "input[value='Pesquisar']"
    elements :detalhar_assinatura_btn, "input[title='Detalhar']"
    elements :alterar_assinatura_img_btn, "input[title='Alterar'][type='image']"
    element :alterar_assinatura_btn, "input[title='Alterar'][type='button']"
    elements :excluir_assinatura_btn, "input[title='Excluir'][type='image']"
    element :confirmar_exclusao_btn, "input[id*='hideYes'][value='OK']"


    def incluir_assinatura
     
        incluir_assinatura_input.click

    end

    def preencher_usuario_assinatura(usuario_assinatura)
        usuario_assinatura_input.click.set(usuario_assinatura)
        sleep(2)
        usuario_assinatura_input.send_keys(:enter)
    end

    def preencher_unidade_assinatura(unidade_assinatura)
        unidade_assinatura_input.select(unidade_assinatura)
    end

    def preencher_insercao_assinatura(assinatura)
        inserir_assinatura_textarea.click.set(assinatura)
    end

    def preencher_alteracao_assinatura(assinatura)
        alterar_assinatura_textarea.click.set(assinatura)
    end

    def salvar_insercao_assinatura
        salvar_insercao_assinatura_input.click
    end

    def salvar_alteracao_assinatura
        salvar_alteracao_assinatura_input.click
    end

    def preencher_nome_usuario(nome_usuario)
        nome_usuario_input.click.set(nome_usuario)
        sleep(3)
        nome_usuario_input.send_keys(:enter)
    end

    def selecionar_unidade_usuario(unidade_usuario)
        unidade_usuario_select.select(unidade_usuario)
        sleep(0.5)
    end

    def selecionar_tipo_mensagem(tipo_mensagem)
        correio_eletronico_check.check
        sleep(0.5)
    end

    def selecionar_status(status)
        status_ativo_radio.click
        sleep(0.5)
    end

    def pesquisar_assinatura_usuario
        pesquisar_usuario_btn.click
    end

    def detalhar_assinatura_e_alterar
        detalhar_assinatura_btn[0].click
        alterar_assinatura_detalhada
        preencher_alteracao_assinatura("CGTI - XPTO - NOVA - ASSINATURA - TESTE")
        salvar_alteracao_assinatura
    end

    def alterar_assinatura_detalhada
        alterar_assinatura_btn.click
        sleep(0.5)
    end

    def alterar_assinatura
        alterar_assinatura_img_btn[0].click
        preencher_alteracao_assinatura("CGTI - XPTO - NOVA - ASSINATURA - TESTENEW - ASS")
        salvar_alteracao_assinatura
    end

    def excluir_assinatura
        excluir_assinatura_btn[0].click
        sleep(0.5)
        confirmar_exclusao_btn.click
    end

end