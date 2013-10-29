class Calculator

  def sum arr = []
    arr.inject(:+) || 0
  end

  def multiply *vars
    vars.flatten.inject(:*)
  end

  def pow num, pow
    num ** pow
  end

  def fac num
    (1..num).inject(:*) || 1
  end

end
