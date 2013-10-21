module SimonSays
  def echo(string)
    string
  end

  def shout(string)
    string.upcase
  end

  def repeat(*args)
    args[1] ||= 2 # repeat twice unless specified
    ([args[0]] * args[1]).join ' '
  end

  def start_of_word(string, number_characters)
    string.chars.first(number_characters).join
  end

  def first_word(string)
    string.split(" ").first
  end
end