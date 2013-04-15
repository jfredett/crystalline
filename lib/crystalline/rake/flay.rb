desc 'run flay metrics'
task :flay do
  puts "#### FLAY ####"
  system 'flay lib/*'
  puts "##############"
end
