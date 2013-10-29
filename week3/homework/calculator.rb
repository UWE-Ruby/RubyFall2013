class Calculator
#Chris Billingham - October 29, 2013
#Ruby Programming, Homework for lecture 3
  def sum *values
      tmp = values.dup
      if tmp.flatten! == nil then
        values.reduce :+
      else
        values.flatten.reduce :+
      end
  end

  def multiply *values

       tmp = values.dup
       if tmp.flatten! == nil then
         values.reduce :*
       else
         values.flatten.reduce :*
       end
  end

  def factorial value
      value.downto(1).reduce(:*)
  end

  def pow(base, exp)
    ary = Array.new
    exp.downto(1) {ary << base}
    ary.reduce :*
  end
end


@calc = Calculator.new

puts "Testing sum"
puts @calc.sum(0)
puts @calc.sum(2,2)
puts @calc.sum(1,2)
puts @calc.sum([1,1,1,1,1])

puts "Testing prod"
puts @calc.multiply(0)
puts @calc.multiply(2,3)
puts @calc.multiply([2,4])


puts "Testing factorial"
puts @calc.factorial(0)
puts @calc.factorial(2)
puts @calc.factorial(5)
puts @calc.factorial(4)
puts @calc.factorial(10)

puts "testing power"
puts @calc.pow(2,4)
