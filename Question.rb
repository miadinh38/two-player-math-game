class Question

  def initialize
    @num1 = rand(1..50)
    @num2 = rand(1..50)
    @answer = @num1 + @num2
  end

  def ask_question
    "What does #{num1} plus #{num2} euqal?"
  end

end

question = Question.new

pp question