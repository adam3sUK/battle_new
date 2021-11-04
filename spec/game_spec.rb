require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  describe 'game starts with two players' do
    it 'it assigns the players to their respecitve variable' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'allows a player to attack another' do
      expect(player_2).to receive(:attacked)
      game.attack(player_2)
    end
  end
end