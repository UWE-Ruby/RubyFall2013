module SimonSays

  def echo(string)
    p string
  end

  def shout(string)
    p string.upcase
  end

  def repeat(string, times = 2)
    p ("#{string} " * times).strip!
  end

  def start_of_word(string, chars = 1)
    p string[0, chars]
  end

  def first_word(string)
    p string.split(' ')[0]
  end

end