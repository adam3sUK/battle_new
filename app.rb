require 'sinatra/base'
require "sinatra/reloader" 
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

get '/' do
  erb(:index)
end

post '/names' do
  $player_one = Player.new(params[:player_1])
  $player_two = Player.new(params[:player_2])
  redirect '/play'
end

get '/play' do
  @player_1 = $player_one.name
  @player_2 = $player_two.name

  @p1_hp = $player_one.hp
  @p2_hp = $player_two.hp

  erb(:play)
end

get '/attack' do
  @player_1 = $player_one.name
  @player_2 = $player_two.name

  $player_two.attacked
  
  erb(:attack)
end

end
