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
    return 1 if n.zero?
    n * fac(n-1)
=begin
    product = 1
    1.upto(n){|i| product *= i}
    product
=end
  end

end