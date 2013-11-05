class Calculator
  def sum(array)
    return 0 if array.empty?
    array.inject(:+)
  end

  def multiply(*args)
    args.flatten.inject(:*)
  end

  def pow(n, power)
    return_val = 1
    power.times do
      return_val *= n
    end
    return_val
  end

  def fac(n)
    return_val = 1
    while n > 0 
      return_val*=n
      n-=1
    end
    return_val
  end

end