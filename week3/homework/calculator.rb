class Calculator

  def sum array = []
    array.inject(:+) || 0
  end

  def multiply *args

    args.flatten.inject(:*) || 0

  end

  def pow base, exp

    Integer(base) ** Integer(exp)

  end

  def fac n = 0
    product = 1
    1.upto(n) do |i|
      product *= i
    end
    product
  end

end
