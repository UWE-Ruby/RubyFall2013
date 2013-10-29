class Calculator
  def initialize
  end

  def pow(base, exp)
    base**exp
  end

  def sum(values)
    values.inject(0) {|sum, value| sum + value}
  end

  def multiply(*values)
    values.flatten.inject(1) {|product, value| product * value}
  end

  def fac(value)
    value = 1 if value < 2
    value.downto(1).inject(1) {|factorial, val| factorial * val}
  end
end