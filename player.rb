
class Person
  attr_accessor :name, :score, :lives, :answer

  def initialize(name)
    @name = name
    @score = 0;
    @lives = 3;
  end

  def ask
    @firstNumber = rand(1..10)
    @secondNumber = rand(1..10)
    @answer = @firstNumber + @secondNumber
    "#{@name}: What does #{@firstNumber} plus #{@secondNumber} equal?"
  end

  def reply (response, solution)
    # puts solution
    # puts response
    # puts @solution == response.to_i
    if (response.to_i != solution)
      "#{@name}: Seriously? No!"
      @lives = @lives - 1;
    else
      "#{@name}: YES! You are correct!"
    end
  end


end
