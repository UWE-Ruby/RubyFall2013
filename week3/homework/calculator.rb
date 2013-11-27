class Calculator
  def sum input
    input.inject(0, :+) 
  end

  def multiply *inputs
    inputs.flatten.inject(:*)
  end

  def pow base, exponent
    base**exponent
  end

  def fac n
    product =1
    1. upto(n){|i| product *= *}
    product    
  end
end