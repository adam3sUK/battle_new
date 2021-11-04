require 'player'

describe Player do
  subject(:john) {Player.new('John')}
  subject(:paul) {Player.new('Paul')}
  describe '#name' do
    it 'returns the name' do
      expect(john.name).to eq 'John'
    end
  end
  describe '#hp' do
    it 'returns the health points of the player' do
      expect(john.hp).to eq 60
    end
  end

end