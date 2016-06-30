Dir["#{File.dirname __FILE__}/**/*.rb"].each { |path| require path }
Dir["#{File.dirname __FILE__}/../app/**/**/*.rb"].each { |path| require path }
