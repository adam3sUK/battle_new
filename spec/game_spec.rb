require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double :player1, :name => "John" }
  let(:player_2) { double :player2, :name => "Paul" }
  describe 'game starts with two players' do
    it 'it assigns the players to their respecitve variable' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  end

  describe '#active_player' do
    it 'on initialize with an active player' do
      allow_any_instance_of(Game).to receive(:active_player).and_return(game.player_1)
      expect(game.active_player).to eq player_1
    end
  end

  describe '#change_active_player' do
    it 'changes the active player' do
      srand(2)
      expect{game.change_active_player}.to change{game.active_player}.from(game.player_1).to(game.player_2)
    end
  end

  describe '#attack' do
    it 'allows a player to attack another' do
      expect(player_2).to receive(:attacked)
      game.attack(player_2)
    end
  end
end