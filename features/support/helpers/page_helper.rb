require_relative 'file_helper.rb'

class PageHelper < SitePrism::Page
  
  include FileHelper

  element :visualizar_impressao, 'div[id="viewer"]'

  def initialize
    @menu = MenuIntranetPage.new
    @login = LoginPage.new
  end

  element :carregamento_ajax, "img[src*='spinner.gif']"

  def consultar_imigrante_submenu
    puts "Acessando submenu 'Consultar Imigrante'"
    @menu.imigrante_menu.hover
    @menu.consultar_imigrante_submenu.click
  end

  def emitir_certidao_submenu
    puts "Acessando submenu 'Emitir Certidão'"
    @menu.imigrante_menu.hover
    @menu.emitir_certidao_submenu.click
  end

  def situacao_requerimento_submenu
    puts "Acessando submenu 'Situação do Requerimento'"
    @menu.solicitacoes_menu.hover
    @menu.situacao_requerimento_submenu.click
  end

  def aguardar_carregamento
    puts "Aguardando Carregamento"
    wait_until_carregamento_ajax_invisible
    sleep(1)
  end

  def visualizar_impressao
    switch_to_window(windows.last)
    wait_until_visualizar_impressao_visible
    puts "Visualizando impressão"
    sleep(1)
  end

end