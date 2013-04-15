desc 'run flog metrics'
task :flog do
  puts "#### FLOG ####"
  system 'flog lib/*'
  puts "##############"
end
