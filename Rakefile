require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc 'Run console in libs for testing'
task :console do
  exec 'irb -r absence -I ./lib/absence.rb'
end

namespace :codecov do
  desc 'Uploads the latest simplecov result set to codecov.io'
  task upload: :environment do
    require 'simplecov'
    require 'codecov'

    formatter = SimpleCov::Formatter::Codecov.new
    formatter.format(SimpleCov::ResultMerger.merged_result)
  end
end