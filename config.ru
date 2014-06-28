require "rubygems"
require "bundler"
Bundler.require

require 'rack-livereload'
use Rack::LiveReload
use Rack::MethodOverride #for _method, PUT and DELET method overrides

require './app'
run App
