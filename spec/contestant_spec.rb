require './lib/contestant'
require './lib/game'

RSpec.describe Contestant do
  describe '#full_name' do
    alexander = Contestant.new({first_name: 'Alexander',
                                      last_name: 'Aigiades',
                                      age: 28,
                                      state_of_residence: 'CO',
                                      spending_money: 10})

    it 'has a full name' do
      expect(alexander.full_name).to eq('Alexander Aigiades')
    end
  end

  describe 'age' do
    alexander = Contestant.new({first_name: 'Alexander',
                                      last_name: 'Aigiades',
                                      age: 28,
                                      state_of_residence: 'CO',
                                      spending_money: 10})

    it 'has an age' do
      expect(alexander.age).to eq(28)
    end
  end

  describe 'state_of_residency' do
    alexander = Contestant.new({first_name: 'Alexander',
                                      last_name: 'Aigiades',
                                      age: 28,
                                      state_of_residence: 'CO',
                                      spending_money: 10})

    it 'has a state of residency' do
      expect(alexander.state_of_residence).to eq('CO')
    end
  end

  describe 'spending_money' do
    alexander = Contestant.new({first_name: 'Alexander',
                                      last_name: 'Aigiades',
                                      age: 28,
                                      state_of_residence: 'CO',
                                      spending_money: 10})

    it 'has spending money' do
      expect(alexander.spending_money).to eq(10)
    end
  end

  describe '#out_of_state' do
    alexander = Contestant.new({first_name: 'Alexander',
                                      last_name: 'Aigiades',
                                      age: 28,
                                      state_of_residence: 'CO',
                                      spending_money: 10})

    it 'knows if state of resideny is in CO' do
      expect(alexander.out_of_state?).to be(false)
    end
  end

  describe 'game_interests' do
    alexander = Contestant.new({first_name: 'Alexander',
                                      last_name: 'Aigiades',
                                      age: 28,
                                      state_of_residence: 'CO',
                                      spending_money: 10})

    it 'has no game interest by default' do
      expect(alexander.game_interests).to eq([])
    end
  end

  describe '#add_game_interest' do
    pick_4 = Game.new('Pick 4', 2)
    mega_millions = Game.new('Mega Millions', 5, true)
    alexander = Contestant.new({first_name: 'Alexander',
                                      last_name: 'Aigiades',
                                      age: 28,
                                      state_of_residence: 'CO',
                                      spending_money: 10})
    alexander.add_game_interest(pick_4)
    alexander.add_game_interest(mega_millions)

    it 'can add game interests' do
      expect(alexander.game_interests).to eq([pick_4, mega_millions])
    end
  end
end
