require_relative 'player'
require_relative 'question'

player = Player.new

while (player.check_player_life)
    mathQuestion = Question.new

  print mathQuestion.ask_question
  @answer = gets.chomp.to_i

  if (mathQuestion.is_correct?(@answer))
    puts "Yes! You are correct!"
    player.show_life
    player.player_one_turn
  else
    puts "Seriously? No!"
    (player.player_one_turn) ? player.playerOne_lose_life : player.playerTwoLife_lose_life
    player.show_life
  end
  if (player.check_player_life)
    puts "----- NEW TURN ------"
  end

end
puts "-----GAME OVER-----"
