class Application < Sinatra::Base

  enable :inline_templates,:logging

  configure(:production) { Bundler.require(:production) }
  configure(:development) { Bundler.require(:development) }
  configure(:test) {}

  get '/' do
    slim :index
  end

  get '/dot' do
    "dot"
  end

  get '/space' do
    "space"
  end

  get '/blue' do
    "blue"
  end



end