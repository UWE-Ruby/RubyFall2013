class EvenNumber

  def even(number)
    number.even?
  end

  def next_even(nextnumber)
    nexteven = nextnumber + 2
  end	

  def compair(num1, num2)
    num1 <=> num2
  end

  def makerange(range)
    a = range
    b = a.select {|x| x.even? }
  end
end
