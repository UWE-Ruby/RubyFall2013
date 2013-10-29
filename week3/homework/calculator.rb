class Calculator
  
  def sum(arr)
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
  end
end