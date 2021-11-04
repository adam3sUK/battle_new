require 'sinatra/base'
require "sinatra/reloader" 
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

get '/' do
  erb(:index)
end

post '/names' do
  player_one = Player.new(params[:player_1])
  player_two = Player.new(params[:player_2])
  $game = Game.new(player_one, player_two)
  redirect '/play'
end

get '/play' do
  @game = $game
  erb(:play)
end

get '/attack' do
  @game = $game
  @game.attack(@game.player_2)
  erb(:attack)
end

end
