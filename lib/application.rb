Application < Sinatra::Base

get '/' do
  slim :index
end