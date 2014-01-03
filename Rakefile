require "bundler/gem_tasks"
require "dotenv"
require "rake/testtask"

Dotenv.load

task :default => [:test]

Rake::TestTask.new do |task|
  task.libs = ["lib", "test"]
  task.test_files = FileList["test/*_test.rb"]
end
