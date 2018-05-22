class Question
  def initialize
    @first_num = rand(1..20)
    @second_num = rand(1..20)
    @answer = @first_num + @second_num
end

  def askQuestion
    puts "What is #{@first_num} + #{@second_num}?"
  end

  def is_correct?(user_input)
    if user_input == @answer
      return true
    else
      return false
    end
  end
end
