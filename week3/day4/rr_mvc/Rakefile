require 'rake/testtask'


Rake::TestTask.new do |t|
  t.libs << "app"
  t.libs << "lib"
  t.libs << "config"
  t.libs << "test"
  t.pattern = 'test/*_test.rb'
  t.verbose = true if ARGV[1] == "--verbose"
end
