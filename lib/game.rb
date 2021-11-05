require_relative './player'

class Game
  attr_accessor :player_1, :player_2, :active_player, :opponent

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @active_player = [@player_1, @player_2].sample
    @opponent = (@active_player == @player_1 ? @player_2 : @player_1)
  end

  def change_active_player
    @active_player = (@active_player == @player_1 ? @player_2 : @player_1)
    set_opponent
  end

  def set_opponent
    @opponent = (@active_player == @player_1 ? @player_2 : @player_1)
  end  

  def attack(player)
    player.attacked
  end
end