require_relative './player'

class Game
  attr_accessor :player_1, :player_2, :active_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @active_player = [@player_1, @player_2].sample
  end

  def change_active_player
    @active_player = (@active_player == @player_1 ? @player_2 : @player_1)
  end

  def attack(player)
    player.attacked
    change_active_player
  end
end