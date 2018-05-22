require_relative 'player'
require_relative 'question'

playerOne = Player.new

while (player.check_Player_Life)
    mathQuestion = Question.new

  print mathQuestion.askQuestion
  @answer = gets.chomp.to_i

  if (mathQuestion.is_correct?(@user_input))
    puts "Yes! You are correct!"
  else
    puts "Seriously? No!"
    (player.oneplayeTurn) ? player.playerOne_lose_life : player.playerTwoLife_lose_life
  end
  if (player.check_Player_Life)
    puts "----- NEW TURN ------"
  end
end
puts "-----GAME OVER-----"
