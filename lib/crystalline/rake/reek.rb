desc 'run reek metrics'
task :reek do
  puts "#### FLAY ####"
  system 'reek lib/*.rb'
  puts "##############"
end
