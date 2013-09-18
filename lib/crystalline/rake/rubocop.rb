desc 'run rubocop'
task :rubocop do
  system 'rubocop --format emacs'
end
