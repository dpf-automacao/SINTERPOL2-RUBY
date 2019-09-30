module FileHelper

    # TODO: Transformar métodos para self
    
    def normalizar_path(path)
      File.join(Dir.pwd, path).gsub(File::SEPARATOR, File::ALT_SEPARATOR || File::SEPARATOR)
    end

    def anexar(campo_anexar, path)
      @path_file = normalizar_path(path)
      attach_file(campo_anexar, @path_file, make_visible: true)
    end

    def gravar_dados(path, dados)

      @path_file = normalizar_path(path).downcase

      File.open(@path_file, 'w') do |file|
        file.puts(dados)
      end

    end

    def recuperar_dados(file)
      File.readlines(file)
    end

    def atualizar_conteudo(path, dados)

      @path_file = normalizar_path(path)

      File.open(@path_file, 'a') do |file|

        file.puts(dados)

      end

    end

end
