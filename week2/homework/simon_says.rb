# what does this program need to do? repeat strings given to it. 

module SimonSays
  def echo(string)
    p(string) 
  end
  
  def shout(string)
    p(string).upcase
  end
  
  def repeat(string, number)
    a=(string)
    # one cycle 
    b= a + " "
    c=b*number
    d=c.strip
    p d
  end
  
  def start_of_word(string, number)
  letters=(string).scan(/./)
  returned_letters= letters.first(number).join()
  p returned_letters
  end
  
  def first_word(string)
  words = (string).scan(/[\w']+/)
  ret_words = words[0]
  end
  
end

