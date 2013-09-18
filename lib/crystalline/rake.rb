require 'crystalline/rake/flay'
require 'crystalline/rake/flog'
require 'crystalline/rake/mutant'
require 'crystalline/rake/spec'
require 'crystalline/rake/rubocop'

require 'pry'

task :default => :spec

desc 'run flog, flay metrics'
task :metrics => [:flog, :flay]

desc 'run specs, the mutant specs, then metrics'
task :all => [:spec, :mutant, :metrics]

