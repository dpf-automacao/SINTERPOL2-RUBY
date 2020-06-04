Quando("eu entro no menu Configuracoes e clico no sub-menu Sistema") do
    @menu = MenuPage.new
    @sistema = ConfiguracoesSistemaPage.new
    @menu.menu_configuracoes
    @menu.sub_menu_sistema
end

Quando("clico para Configurar Mensagem ST") do
    @sistema.configurar_msg_st
end

Quando("informo Unidade de Origem {string} para mensagem ST") do |unidade_origem|
    @sistema.selecionar_unidade_origem_st(unidade_origem)
end

Quando("informo Unidade de Destino {string} para mensagem ST") do |unidade_destino|
    @sistema.selecionar_unidade_destino_st(unidade_destino)
end

Quando("clico para Configurar mensagem ST novamente") do
    @sistema.configurar_st_novamente
end

Quando("clico para Confirmar a Configuracao da Mensagem ST") do
    @sistema.confirmar_configuracao_st
end

Entao("eu realizo a Configuracao da Mensagem ST com sucesso") do

end

Quando("clico para Excluir Mensagem ST com Unidade Origem {string} e Unidade Destino {string}") do |unidade_origem, unidade_destino|
    @sistema.excluir_mensagem_st(unidade_origem, unidade_destino)
end

Quando("confirmo a Exclusao da Mensagem ST") do
    @sistema.confirmar_exclusao_st_btn
end

Entao("eu realizo a Exclusao da Mensagem ST com sucesso") do

end

Quando("clico para Configurar Valores") do
    @sistema.configurar_valores
end

Quando("informo Unidade {string} para configuracao de valores") do |unidade|
    @sistema.selecionar_unidade_valores(unidade)
end

Quando("informo Tipo de Registro {string} para configuracao de valores") do |tipo_registro|
    @sistema.selecionar_tipo_registro_valores(tipo_registro)
end

Quando("informo Sigilo {string} para configuracao de valores") do |sigilo|
    @sistema.selecionar_sigilo_valores(sigilo)
end

Quando("clico para Configurar Valores novamente") do
    @sistema.configurar_vlr
end

Quando("confirmo a Configuracao de Valores") do
    @sistema.confirmar_configuracao_vlr
end

Entao("eu realizo a Configuracao de Valores com sucesso") do

end
  
Quando("clico para Excluir Configuracao de Valor da Unidade {string}") do |unidade_vlr|
   @sistema.excluir_conf_valores(unidade_vlr)
end

Quando("confirmo a Exclusao da Configuracao de Valor") do
    @sistema.confirmar_exclusao_conf_vlr
end

Entao("eu realizo a Exclusao de Configuracao de Valores com sucesso") do

end