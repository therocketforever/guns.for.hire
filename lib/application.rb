class Application < Sinatra::Base

  enable :inline_templates,:logging

  configure(:production) { Bundler.require(:production) }
  configure(:development) { Bundler.require(:development) }
  configure(:test) {}

  get '/' do
    slim :index
  end

end