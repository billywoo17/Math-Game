# 1) Generate math question
# 2) Keep track of life
# 4)

class MathQuestion
  def initialize()
  end
    def generateQuestion
    firstNumber =  rand(20)
    secondNumber =  rand(20)
    puts "What does #{firstNumber} plus #{secondNumber} equal"
    sum = firstNumber + secondNumber
  end
end

question = MathQuestion.new()
question.generateQuestion
