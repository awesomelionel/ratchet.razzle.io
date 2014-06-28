require "rubygems"
require "bundler"
Bundler.require

if ENV['RACK_ENV'] == 'development'
  require 'rack-livereload'
  use Rack::LiveReload
end

use Rack::MethodOverride #for _method, PUT and DELET method overrides

require './app'
run App
