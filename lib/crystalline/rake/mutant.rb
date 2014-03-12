desc 'run mutant specs'
task :mutant, [:root_module] do |_, args|
  puts "#### MUTANT TESTING ####"
  system "mutant -I lib -r #{args[:root_module].downcase} --use rspec '::#{args[:root_module]}*'"
end
