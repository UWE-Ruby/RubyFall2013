class Calculator

  def sum (input)
    input.inject(0,:+)
  end

  def multiply (*input)
    input.flatten.inject(:*)
  end

  def pow(base,exp)
    (1...exp).to_a.inject(base){|result| result*=base}
  end

  def fac(n)
    (1..n).to_a.inject(1){|result,i| result*=i}
  end

end
