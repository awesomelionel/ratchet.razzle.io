require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/assetpack'

class App < Sinatra::Base
  register Sinatra::Flash
  register Sinatra::Reloader
  register Sinatra::AssetPack

  assets do
    serve '/js', from: 'js'
    serve '/bower_components', from: 'bower_components'

    js :modernizr, [
      '/bower_components/modernizr/modernizr.js',
    ]

    js :libs, [
      '/bower_components/jquery/dist/jquery.js'
    ]

    js :application, [
      '/js/app.js',
      '/js/ratchet.min.js'
    ]

    js_compression :jsmin
  end

  get '/' do
    haml :index
  end

  get '/form' do
    haml :form
  end

  get '/tab-bar' do
    haml :tab_bar
  end

  get '/typography' do
    haml :typography
  end

  get '/buttons' do
    haml :buttons
  end

  get '/slider' do
    haml :slider
  end

end

#if __FILE__ == $0
#  App.run! :port => 9292
#end
