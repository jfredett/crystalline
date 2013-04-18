# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crystalline/version'

Gem::Specification.new do |gem|
  gem.name          = "crystalline"
  gem.version       = Crystalline::VERSION
  gem.authors       = ["Joe Fredette"]
  gem.email         = ["jfredett@gmail.com"]
  gem.description   = %q{A tool which installs common Rake tasks, Gem dependencies, and RSpec Helpers used in my gems.}
  gem.summary       = %q{A tool which installs common Rake tasks, Gem dependencies, and RSpec Helpers used in my gems.}
  gem.homepage      = ""


  gem.add_dependency "rspec"
  gem.add_dependency "rspec-spies"
  gem.add_dependency "mutant"
  gem.add_dependency "coveralls"

  gem.add_dependency "flog"
  gem.add_dependency "flay"

  gem.add_dependency "pry"

  gem.add_dependency "rake"

  gem.add_dependency 'gli'
  gem.add_dependency 'tilt'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
