require_relative 'player'
require_relative 'question'

player = Player.new

while (player.check_Player_Life)
    mathQuestion = Question.new

  print mathQuestion.askQuestion
  @answer = gets.chomp.to_i

  if (mathQuestion.is_correct?(@answer))
    puts "Yes! You are correct!"
    player.show_life
  else
    puts "Seriously? No!"
    (player.player_One_Turn) ? player.playerOne_lose_life : player.playerTwoLife_lose_life
    player.show_life
  end
  if (player.check_Player_Life)
    puts "----- NEW TURN ------"
  end
end
puts "-----GAME OVER-----"
