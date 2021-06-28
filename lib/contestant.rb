gclass Contestant
  attr_reader :age, :state_of_residence, :spending_money, :game_interests

  def initialize(args)
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @age = args[:age]
    @state_of_residence = args[:state_of_residence]
    @spending_money = args[:spending_money]
    @game_interests = []
  end

  def full_name
    @first_name + ' ' + @last_name
  end

  def out_of_state?
    @state_of_residence != 'CO'
  end

  def add_game_interest(game)
    @game_interests << game
  end
end
