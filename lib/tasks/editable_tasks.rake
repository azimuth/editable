require 'rcov/rcovtask'
 
desc 'Measures test coverage using rcov'
namespace :rcov do
  desc 'Output unit test coverage of plugin.'
  Rcov::RcovTask.new(:unit) do |rcov|
    rcov.pattern    = 'test/unit/**/*_test.rb'
    rcov.output_dir = 'rcov'
    rcov.verbose    = true
  end
 
  desc 'Output functional test coverage of plugin.'
  Rcov::RcovTask.new(:functional) do |rcov|
    rcov.pattern    = 'test/functional/**/*_test.rb'
    rcov.output_dir = 'rcov'
    rcov.verbose    = true
  end
  
  desc 'Output test coverage for all tests'
  Rcov::RcovTask.new(:all) do |rcov|
    rcov.pattern = 'test/**/*_test.rb'
    rcov.output_dir = 'rcov'
    rcov.verbose  = true
  end
end