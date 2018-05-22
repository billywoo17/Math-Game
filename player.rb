class Player
  attr_accessor(:name, :lives, :correct_answers)
  def initialize
    @playerOneLife = 3
    @playerTwoLife = 3
    @playerOneTurn = false;
  end

  def playerOne_lose_life
    @playerOneLife -= 1
    puts "P1: #{@playerOneLife}/3 vs P2: #{@playerTwoLife}/3"
  end

  def playerTwoLife_lose_life
    @playerTwoLife -= 1
    puts "P1: #{@playerOneLife}/3 vs P2: #{@playerTwoLife}/3"
  end

  def oneplayeTurn
    @playerOneTurn = !@playerOneTurn
  end

  def check_Player_Life
    if((@playerOneLife || @playerTwoLife)  > 0)
      true
    else
      false
    end
  end

end
