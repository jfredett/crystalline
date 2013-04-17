module Crystalline
  module Generators
    class SpecHelper < Generator
      def self.file_name
        'spec_helper.rb'
      end

      def self.command_name
        :spec_helper
      end

      def self.prefix
        'spec'
      end
    end
  end
end
