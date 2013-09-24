desc 'run rubocop'
task :rubocop do
  system 'rubocop --format emacs lib/*'
end
