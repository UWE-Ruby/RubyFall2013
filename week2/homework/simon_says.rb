# Module for formatting/repeating Strings
module SimonSays

  def echo(string)
    string
  end

  def shout(string)
    string.upcase
  end

  def repeat(string, amount = 2)
    ("#{string} " * amount).rstrip
  end

  def start_of_word(string, letters = 0)
    string[0...letters]
  end

  def first_word(string)
    string.split(' ')[0]
  end

end
