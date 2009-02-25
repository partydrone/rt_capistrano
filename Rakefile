require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('rt_capistrano', '0.1.0') do |p|
  p.description    = "Use native capistrano tasks with Media Temple (gs) accounts."
  p.url            = "http://github.com/partydrone/rt_capistrano"
  p.author         = "Andrew Porter"
  p.email          = "partydrone@me.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
