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
    @game.attack(@game.opponent)
    erb(:attack)
  end

  post '/change_turn' do
    $game.change_active_player
    redirect '/play'
  end

end
