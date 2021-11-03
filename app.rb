require 'sinatra/base'
require "sinatra/reloader" 

class Battle < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

get '/' do
  erb(:index)
end

post '/names' do
  @player_1 = params[:Player_1]
  @player_2 = params[:Player_2]
  erb(:play)
end

end
