module Crystalline
  module Generators
    class Rakefile < Generator
      def self.file_name
        'Rakefile.erb'
      end

      def self.command_name
        :Rakefile
      end
    end
  end
end
