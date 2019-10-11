class ConfiguracoesAssociarUsuarioPage < SitePrism::Page

    element :cpf_usuario_input, "input[id*='inputTextCpf']"
    element :nome_usuario_input, "input[id*='inputTextNome']"
    element :pesquisar_btn, "input[value='Pesquisar']"
    element :associar_usuario_btn, "input[title='Associar']"
    element :confirmar_associacao_iniciais_btn, "input[value='Associar']"
    element :confirmar_associacao_unidade_btn, "input[id*='AssociarUnidade'][value='Associar']"
    element :confirmar_associacao_area_btn, "input[id*='AssociarArea'][value='Associar']"
    element :definir_iniciais_btn, "input[title='Definir Iniciais']"
    element :iniciais_input, "input[class='mask-alpha']"
    element :alterar_iniciais_btn, "input[title='Alterar']"
    element :confirmar_alteracao_iniciais_btn, "input[value='Alterar']"
    element :sigla_input, "input[id*='inputText_siglaUnidade']"
    elements :distrib_adm_check_box, "input[type='checkbox']"
    element :area_select, "select[id*='decorate_campoArea']"
    

    def preencher_cpf(cpf_usuario)
        cpf_usuario_input.click.set(cpf_usuario)
    end

    def preencher_nome(nome_usuario)
        nome_usuario_input.click.set(nome_usuario)
    end

    def pesquisar_usuario
        pesquisar_btn.click
    end

    def associar_usuario
        associar_usuario_btn.click
    end

    def definir_iniciais_usuario
        definir_iniciais_btn.click
    end

    def preencher_iniciais(iniciais_usuario)
        binding.pry
        iniciais_input.click.set(iniciais_usuario)
    end

    def confirmar_definicao_iniciais
        confirmar_associacao_iniciais_btn.click
    end

    def alterar_iniciais_usuario
        alterar_iniciais_btn.click
    end

    def confirmar_alteracao_iniciais
        confirmar_alteracao_iniciais_btn.click
    end

    def preencher_sigla_unidade(sigla_unidade)
        sigla_input.click.set(sigla_unidade)
        sleep(3)
        sigla_input.send_keys(:tab)
    end

    def confirmar_associacao_unidade
        sleep(1)
        confirmar_associacao_unidade_btn.click
    end

    def confirmar_associacao_area
        confirmar_associacao_area_btn.click
    end

    def distribuicao_adm_unidade
        distrib_adm_check_box[0].check
        sleep(1)
        distrib_adm_check_box[1].check
    end

    def selecionar_area_usuario(area_usuario)
        area_select.click.select(area_usuario)
    end


end