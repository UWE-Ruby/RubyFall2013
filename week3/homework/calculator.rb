class Calculator
  
  def sum(arr)
<<<<<<< HEAD
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
=======
    arr.inject(0){ |result, number| result + number }
  end
  
  def multiply(arg1, arg2 = 1)
     if arg1.respond_to? 'each'
        arg1.inject(1){ |result, fac| result *= fac  }
     else
       arg1*arg2
     end
  end
  
  def pow(num, power)
    base = num
    (power-1).times { num *= base }
    num
  end
  
  def fac(n)
    (1..n).inject(1){ |result, fac|  result * fac }
>>>>>>> 19d4e50a1b0af56a8d430a1d46d13fae32e3668f
  end
end