module Crystalline
  module Generators
    class Travis < Generator
      def self.file_name
        'travis.yml'
      end

      def self.command_name
        :travis
      end

      def self.hidden?
        true
      end
    end
  end
end
