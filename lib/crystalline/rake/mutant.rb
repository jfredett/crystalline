desc 'run mutant specs'
task :mutant, [:gem_name, :root_module] do |_, args|
  puts "#### MUTANT TESTING ####"
  system "mutant -I lib -r #{args[:gem_name]} --rspec-full #{args[:root_module]}"
  puts "########################"
end
