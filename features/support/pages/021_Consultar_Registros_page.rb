require_relative "../helpers/file_helper.rb"

class ConsultarPage < SitePrism::Page

include FileHelper


    #MAPEAMENTO BOTÕES DE TELA DOCUMENTOS RECEBIDOS
    element :incluir_button, 'input[value="Incluir"]'
    element :limpar_button, 'input[value="Limpar"]'
    element :pesquisar_button, 'input[value="Pesquisar"]'


     #MAPEAMENTO ELEMENTOS DA TELA DE DOCUMENTOS RECEBIDOS
     element :numero_registro_input, 'input[id*="iptSiapro"]'
     element :numero_input, 'input[name*="form:j_id148:j_id155"]'
     element :tipo_documento_select, 'select[id*="form:j_id163:j_id174"]' 
     element :referencia_input, 'input[name*="form:j_id265:j_id272"]'
     element :origem_input, 'input[name*="form:j_id250:j_id257"]'
     element :remetente_input, 'input[name*="form:j_id205:j_id212"]'
     element :destinatario_input, 'input[name*="form:j_id220:j_id227"]'
     element :pais_origem_option, 'select[name*="form:j_id322:j_id333"]'
     element :projeto_option, 'select[name*="form:j_id342:j_id353"]'
     element :tipo_registro_select, 'select[name*="form:j_id163:j_id174"]'
     element :data_documento_inicial_input, 'input[id*="dataInicioDocInputDate"]'
     element :data_documento_final_input, 'input[id*="form:dataFimDocInputDate"]'
     element :data_recebimento_inicial_input, 'input[id*="dataInicioRecInputDate"]'
     element :data_recebimento_final_input, 'input[id*="form:dataFimRecInputDate"]'
     element :assunto_input, 'input[class*="form:j_id405:j_id412"]'
     element :conteudo_text, 'textarea[name*="form:j_id420:j_id430"]'

     element :aguardar_load, 'div[id*="formWaitStatus:wait-dialogHeader"]'


    def pesquisar_documento

        @num_documento = recuperar_dados("features/arquivos/numero_documento.txt");

        numero_registro_input.click.set(@num_documento[0].chomp)
        sleep(1)
        pesquisar_button.click
        sleep(1)
        wait_until_aguardar_load_invisible
        sleep(1)

    end

end