class Calculator
  def pow(base, exp)
    base**exp
  end

  def sum(*values)
    repeated_operation(values, 0, :+)
  end

  def multiply(*values)
    repeated_operation(values, 1, :*)
  end

  def fac(value)
    value.downto(1).inject(1) {|factorial, val| factorial * val}
  end

  private
  def repeated_operation(array, start, operator)
    array.flatten!
    array.inject(start) {|operation, value| operation.send(operator, value) }
  end
end