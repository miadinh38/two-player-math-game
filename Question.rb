class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @correct_answer = @num1 + @num2
  end

  def ask_question
    "What does #{@num1} plus #{@num2} equal?"
  end

  def is_answer_correct(guess)
    guess == @correct_answer
  end

end
