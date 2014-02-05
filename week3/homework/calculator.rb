class Calculator

  def sum *values
    values.flatten!
    values.inject(0) { |val, i| val += i }
  end

  def multiply *values
    values.flatten!
    values.inject(1) { |val, i| val *= i }
  end

  def pow base, multiplier
    values = Array.new multiplier, base
    values.flatten!
    values.inject(1) {|val, i| val *= i }
  end

  def fac value
    value == 0 ? 1 : value * fac(value-1)
  end

end