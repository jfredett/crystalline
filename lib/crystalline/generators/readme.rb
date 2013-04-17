module Crystalline
  module Generators
    class Readme < Generator
      def self.file_name
        'README.md'
      end

      def self.command_name
        :readme
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

    end
  end
end
