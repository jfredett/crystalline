def generator_command(klass)
  desc "Generate a #{klass.file_name} for the current app"
  command klass.command_name do |c|
    c.action do |global, options, args|
      gem_name = File.basename(File.expand_path('.'))
      user = ENV['USER']

      file_name = if klass.hidden? then ".#{klass.file_name}" else klass.file_name end
      file_path = File.join('./', klass.prefix, file_name)

      if File.exists?(file_path)
        puts klass.generate!(user, gem_name)
      else
        File.open(file_path, 'w') do |f|
          f.puts klass.generate!(user, gem_name)
        end
      end
    end
  end
end
