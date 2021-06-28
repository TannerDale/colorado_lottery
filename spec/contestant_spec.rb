require './lib/contestant'

RSpec.descride 'contestant' do
  describe 'name' do
    pick_4 = Game.new('Pick 4', 2)

    expect(pick_4.name).to eq('Pick 4')
  end

  describe 'cost' do
  end

  describe '#national drawing' do
  end
end
