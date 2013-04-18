module Crystalline
  module Generators
    class Readme
      def initialize(user, name)
        @user = user
        @name = name
      end

      def template
        @template ||= Tilt.new File.join('..', File.dirname(__FILE__), 'templates', 'README.md.erb')
      end

      def self.generate!(name)
        new(name).generate!
      end

      def generate!
        templates.render
      end
    end
  end
end
