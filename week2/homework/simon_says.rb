module SimonSays
  def echo(string)
    string
  end

  def shout(string)
    string.upcase
  end

  def repeat(*args)
    string = args[0]
    args[1] ||= 2
    string << " #{args[0]}"*(args[1]-1)

    return string
  end

  def start_of_word(string, number_characters)
    last_character = number_characters - 1
    string[0..last_character]
  end

  def first_word(string)
    string.split(" ").first
  end
end