class Calculator
  
  def sum(arr)
    res = 0
    arr.each do |num|
      res += num
    end
    res
  end
  
  def multiply(*args)
    if args.length == 1
      args[0][0] * args[0][1]
    elsif args.length ==  2
      args[0] * args[1]
    else
      0
    end
  end
  
  def pow(num, power)
    (1..power).each |i| do
    end
  end
  
  def fac(n)
  end
end