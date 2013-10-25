# what does this program need to do? repeat strings given to it. 

module SimonSays
  def echo(string) # echo (input)
    p(string) #input
  end
  
  def shout(string) #input
    p(string).upcase #input.case
  end
  
  def repeat(string, number) #input n=2
    a=(string)    #((input.+ ' ') *n).chop ([input * n]).join(' ')
    # one cycle 
    b= a + " "
    c=b*number
    d=c.strip
    p d
  end
  
  def start_of_word(string, number) #input, n
  letters=(string).scan(/./)  #input[0, n]
  returned_letters= letters.first(number).join()
  p returned_letters
  end
  
  def first_word(string) #input
  words = (string).scan(/[\w']+/) #input.split.first
  ret_words = words[0]
  end
  
end

