class Calculator

  def sum(nums=[])
    # start off with zero, cycle through the array
    # accumulate total plus current value

    # FIRST TRY, then I looked at inject in the docs ;)
    # nums.inject(0){ |total, current| total += current }

    nums.inject(0, :+)
  end

  def multiply(*nums)
    # takes a variable list of numbers, wrapping them in an array.
    # can also take an array, wrapping it in an array
    nums.flatten.inject(1, :*) 
  end

  def fac(num)
    # product of num * num-1 * num-2 until one
    (1..num).to_a.inject(1, :*)
  end

  def pow(base, power)
    # use the standard ** operator
    base ** power
  end

end