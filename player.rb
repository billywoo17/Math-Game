class Player
  def initialize
    @playerOneLife = 3
    @playerTwoLife = 3
    @playerOneTurn = false;
  end
  def show_life
    puts "P1: #{@playerOneLife}/3 vs P2: #{@playerTwoLife}/3"
  end

  def playerOne_lose_life
    @playerOneLife -= 1
  end

  def playerTwoLife_lose_life
    @playerTwoLife -= 1
  end

  def player_one_turn
    @playerOneTurn = !@playerOneTurn
  end

  def check_player_life
    if(@playerOneLife  > 0 && @playerTwoLife > 0)
      true
    else
      false
    end
  end

end
