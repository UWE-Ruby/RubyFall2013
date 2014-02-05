module SimonSays
  def echo(what)
    what
  end

  def shout(what)
    what.upcase
  end

  def repeat(what, times = 2)
    return_value = []
    times.times do |x|
      return_value << what
    end
    return_value.join(' ')
  end

  def start_of_word(what, number_of_letters)
    what[0..(number_of_letters - 1)]
  end

  def first_word(what)
    what.split(' ')[0]
  end

end
