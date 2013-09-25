desc 'run mutant specs'
task :mutant, [:root_module] do |_, args|
  puts "#### MUTANT TESTING ####"
  system "mutant --rspec '::#{args[:root_module]}*'"
  puts "########################"
end
