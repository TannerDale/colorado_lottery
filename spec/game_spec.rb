require './lib/game'

RSpec.describe Game do
  describe 'name' do
    pick_4 = Game.new('Pick 4', 2)

    it 'has a name' do
      expect(pick_4.name).to eq('Pick 4')
    end
  end

  describe 'cost' do
    pick_4 = Game.new('Pick 4', 2)

    it 'has a cost' do
      expect(pick_4.cost).to eq(2)
    end
  end

  describe '#national drawing' do
    pick_4 = Game.new('Pick 4', 2)
    mega_millions = Game.new('Mega Millions', 4, true)

    it 'can recognize national game' do
      expect(pick_4.national_drawing?).to be(false)
      expect(mega_millions.national_drawing?).to be(true)
    end
  end
end
