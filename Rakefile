require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc 'Run console in libs for testing'
task :console do
  exec 'irb -r absence -I ./lib/absence.rb'
end
