class Calculator
  def pow(base, exp)
    values = Array.new(exp, base)
    repeated_operation(values, 1, :*)
  end

  def sum(*values)
    repeated_operation(values, 0, :+)
  end

  def multiply(*values)
    repeated_operation(values, 1, :*)
  end

  def fac(value)
    values = value.downto(1).to_a
    repeated_operation(values, 1, :*)
  end

  private
  def repeated_operation(array, start, operator)
    array.flatten!
    array.inject start, operator
  end
end