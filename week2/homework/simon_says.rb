module SimonSays

  def echo(phrase)
    phrase
  end
  
  def shout(phrase)
    phrase.upcase
  end
  
  def repeat(*args)
    if args.length == 1
        "#{args[0]} #{args[0]}"
    elsif args.length == 2
        ("#{args[0]} " * args[1]).strip  
    end
  end
  
  def start_of_word(*args)
    if args.length == 2
        args[0][0..(args[1]-1)]
    end
  end
  
  def first_word(phrase)
    phrase.split(' ')[0]
  end
end