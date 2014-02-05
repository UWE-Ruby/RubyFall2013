module SimonSays

  def echo(input)
    input
  end

  def shout(input)
    input.upcase
  end

  def repeat(input, number=2)
    ([input] * number).join ' '
  end

  def start_of_word(input, number)
    input[0...number]
  end

  def first_word(input)
    input.split(" ")[0]
  end

end
