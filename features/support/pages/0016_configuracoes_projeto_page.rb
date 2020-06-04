class ConfiguracoesProjetoPage < SitePrism::Page


    # INCLUSAO

    element :incluir_projeto_btn, "input[value='Incluir']"
    element :sigla_projeto_input, "input[id*='inputText_siglaUnidade']"
    element :sugestao_div, "div[id='form:decorate_campoSigla:suggestionBox_siglaUnidade'][style*='none']"
    element :nome_projeto_input, "input[name*='campoNomeProjeto']"
    element :codigo_projeto_input, "input[name*='campoCodigo']"
    element :salvar_projeto_btn, "input[value='Salvar']"

    # CONSULTA

    element :pesquisar_projeto_btn, "input[value='Pesquisar']"

    # EDICAO

    element :alterar_projeto_btn, "input[title='Alterar']"

    # EXCLUSAO

    element :excluir_projeto_btn, "input[title='Excluir']"

    # METODOS PARA INCLUSAO

    def incluir_projeto
        incluir_projeto_btn.click
    end

    def preencher_sigla_inclusao(sigla)
        sigla_projeto_input.click.set(sigla)
        sleep(3)
        sigla_projeto_input.send_keys(:enter)
    end

    def preencher_nome_projeto_inclusao(nome_projeto)
        nome_projeto_input.click.set(nome_projeto)
    end

    def preencher_codigo_inclusao(codigo_projeto)
        sleep(2)
        codigo_projeto_input.click.set(codigo_projeto)
    end

    def salvar_projeto_inclusao
        salvar_projeto_btn.click
    end

    # METODOS PARA CONSULTA

    def preencher_sigla_consulta(sigla)
        sigla_projeto_input.click.set(sigla)
        sleep(3)
        sigla_projeto_input.send_keys(:enter)
    end

    def preencher_nome_consulta(nome_projeto)
        nome_projeto_input.click.set(nome_projeto)
    end

    def preencher_codigo_consulta(codigo_projeto)
        codigo_projeto_input.click.set(codigo_projeto)
    end

    def pesquisar_projeto_consulta
        pesquisar_projeto_btn.click
    end

    # METODOS PARA EDICAO

    def preencher_sigla_edicao(sigla)
        sigla_projeto_input.click.set(sigla)
        sleep(3)
        sigla_projeto_input.send_keys(:enter)
    end

    def preencher_nome_edicao(nome_projeto)
        nome_projeto_input.click.set(nome_projeto)
    end

    def preencher_codigo_edicao(codigo_projeto)
        codigo_projeto_input.click.set(codigo_projeto)
    end

    def pesquisar_projeto_edicao
        pesquisar_projeto_btn.click
    end

    def alterar_projeto
        alterar_projeto_btn.click
    end
    
    def preencher_sigla_editar(sigla)
        sigla_projeto_input.click.set(sigla)
        sleep(3)
        sigla_projeto_input.send_keys(:enter)
    end

    def preencher_nome_editar(nome_projeto)
        nome_projeto_input.click.set(nome_projeto)
    end

    def preencher_codigo_editar(codigo_projeto)
        codigo_projeto_input.click.set(codigo_projeto)
    end

    def salvar_projeto_edicao
        salvar_projeto_btn.click
    end

    # METODOS PARA EXCLUSAO

    def preencher_sigla_exclusao(sigla)
        sigla_projeto_input.click.set(sigla)
        sleep(3)
        sigla_projeto_input.send_keys(:enter)
    end

    def preencher_nome_exclusao(nome_projeto)
        nome_projeto_input.click.set(nome_projeto)
    end

    def preencher_codigo_exclusao(codigo_projeto)
        codigo_projeto_input.click.set(codigo_projeto)
    end

    def pesquisar_projeto_exclusao
        pesquisar_projeto_btn.click
    end

    def excluir_projeto
        excluir_projeto_btn.click
    end


end