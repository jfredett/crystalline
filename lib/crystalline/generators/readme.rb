require 'tilt'

module Crystalline
  module Generators
    class Readme
      def initialize(user, name)
        @user = user
        @name = name
      end

      def path
        File.expand_path(
          File.join(
            File.dirname(File.expand_path(__FILE__)),
            '..',
            'templates',
            'README.md.erb'
          )
        )
      end

      def build_status_badge
        "[![Build Status](https://travis-ci.org/#{@user}/#{@name}.png?branch=master)](http://travis-ci.org/#{@user}/#{@name})"
      end

      def code_climate_badge
        "[![Code Climate](https://codeclimate.com/github/#{@user}/#{@name}.png)](https://codeclimate.com/github/#{@user}/#{@name})"
      end

      def coverage_status_badge
        "[![Coverage Status](https://coveralls.io/repos/#{@user}/#{@name}/badge.png?branch=master)](https://coveralls.io/r/#{@user}/#{@name})"
      end

      def gem_version_badge
        "[![Gem Version](https://badge.fury.io/rb/#{@name}.png)](http://badge.fury.io/rb/#{@name})"
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
    end
  end
end
