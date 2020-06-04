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
    element :registros_tbody, "tbody[id*='areaList']"
    elements :excluir_associacao_btb, "input[id*='usuario'][title='Remover']"
    element :confirmar_exclusao_associacao_btn, "input[id*='hideYesButtonMessage']"
    

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
        if(has_definir_iniciais_btn?(wait:2))
            definir_iniciais_btn.click
        else
            puts "O usuário em questão já realizou a definição de iniciais sendo possível apenas a alteração da mesma."
        end
    end

    def preencher_iniciais(iniciais_usuario)
        if(has_iniciais_input?(wait:2))
            iniciais_input.click.set(iniciais_usuario)
        else
            puts "O usuário em questão já realizou a definição de iniciais sendo possível apenas a alteração da mesma."
        end
    end

    def confirmar_definicao_iniciais
        if(has_confirmar_associacao_iniciais_btn?(wait:2))
            confirmar_associacao_iniciais_btn.click
        else
            puts "O usuário em questão já realizou a definição de iniciais sendo possível apenas a alteração da mesma."
        end
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
        wait_until_registros_tbody_visible
    end

    def distribuicao_adm_unidade
        distrib_adm_check_box[0].check
        sleep(1)
        distrib_adm_check_box[1].check
    end

    def selecionar_area_usuario(area_usuario)
        area_select.click.select(area_usuario)
    end

    def desassociar_usuario_unidade_e_area
        @tamanho_unidades = excluir_associacao_btb.size
        @indice = 0
        while(@indice < @tamanho_unidades)
            excluir_associacao_btb[@indice].click
            @indice+=1
            sleep(1)
            confirmar_exclusao_associacao_btn.click
            sleep(1)
            confirmar_exclusao_associacao_btn.click
        end
    end


end