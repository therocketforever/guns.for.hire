require "bundler/setup"
Bundler.require(:default)

require File.expand_path('../lib/application', __FILE__)

Environment = Sprockets::Environment.new
Environment.append_path 'lib/assets/css'

run Rack::Cascade.new [Environment, Application]