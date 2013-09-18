module Crystalline
  module Generators
    class Rubocop < Generator
      def self.file_name
        'rubocop.yml'
      end

      def self.command_name
        :rubocop
      end

      def self.hidden?
        true
      end
    end
  end
end
