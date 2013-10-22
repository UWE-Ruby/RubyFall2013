module SimonSays
  def echo(word)
      word # return String
  end

  def shout(word)
      word.upcase # return String
  end

  def repeat(word,ntimes=2)
    #default is 2 times unless parameter is passed, in this case 3
    #("#{word} " *ntimes).strip
    ([word]*ntimes).join(' ') 
  end

  def start_of_word(word,nchars=1)
    #default is 1 time unless parameter is passed, in this case 2
    word[0...nchars]
  end

  def first_word(words)
    #a = words.split(' ')
    #a[0]
    words.split(' ')[0]
  end

end  