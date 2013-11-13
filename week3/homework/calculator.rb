class Calculator
  def sum arr
    @sum = 0
    arr.each{|n| @sum += n } 
    return @sum
  end  

  def multiply *args
    @product = 1
    if args.length == 1  
      @arr = args[0]
      @arr.each  do |m|
         @product *= m
      end
    end    
   if args.length > 1
      @mcand = args[0]
      @mplier = args[1]
      @arr = [@mcand,@mplier]
      @arr.each {|p| @product *= p}
    end
    return @product
  end  
  def pow *args
    p = args[0]**args[1]
    return p
  end
  ##def pow a,b
  ##   p=a**b
  ##end  
  def fac *args
    #The value of 0! is 1, according to the convention for an empty product.
    if args[0] == 0
      n = 1
      r = (1..n).reduce(:*)
    end 
    if args[0] != 0 
      n = args[0]
      r = (1..args[0]).reduce(:*)
    end  
    return r
  end
end