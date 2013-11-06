class Calculator

  def sum(input=0)
    input.inject(0) {|sum, i| sum + i}
  end

  def multiply(input1=0,input2=0 )
     
    if !input1.kind_of?(Array)
      input1 * input2
    else
      input1.inject(1) {|sum, i| sum * i}
    end
  end

  def pow(input1=0, input2=0)
      input1**input2  
  end

  def fac(input=0)
    if input == 0
      1
    else
      input * fac(input-1)
    end
  end

end
