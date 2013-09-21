class Application < Sinatra::Base

  enable :inline_templates,:logging

  configure(:production) { Bundler.require(:production) }
  configure(:development) { Bundler.require(:development) }
  configure(:test) {}

  get '/' do
    slim :index
  end

  get '/dot' do
    slim :dot
  end

  get '/space' do
    slim :space
  end

  get '/blue' do
    slim :blue
  end

end

binding.pry