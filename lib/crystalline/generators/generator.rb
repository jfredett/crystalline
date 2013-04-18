module Crystalline
  module Generators
    class Generator
      def self.generate!(user, name)
        new(user, name).generate!
      end

      def initialize(user, name)
        @user = user
        @name = name
      end

      def template
        @template ||= Tilt.new path
      end

      def self.generate!(user, name)
        new(user, name).generate!
      end

      def generate!
        template.render self
      end

      def self.template_name
        "#{file_name}.erb"
      end

      def self.prefix
        ''
      end

      def self.hidden?
        false
      end

      def path
        File.expand_path(
          File.join(
            File.dirname(File.expand_path(__FILE__)),
            '..',
            'templates',
            self.class.template_name
          )
        )
      end
    end
  end
end
