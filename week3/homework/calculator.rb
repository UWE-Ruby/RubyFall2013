class Calculator

	# computes sum of two or more numbers
	def sum(numbers)
		#numbers.inject(:+)
		numbers.inject(0){|sum, a| sum +a}
	end

    # multiplies two numbers or an array of numbers
	 def multiply(*numbers)
	 	#numbers.inject(:*)
	 	#numbers.inject(1){|product, n| product * n}
	 	#numbers.reject(&:zero?).inject(:*)
        numbers.flatten.inject(:*)
	 end

	# raises one number to the power of another
	def pow(base, power)
		base**power
	end

    # http://en.wikipedia.org/wiki/Factorial
	def fac(n) # http://www.rodrigoalvesvieira.com/the-most-beautiful-factorial-method/
        return 1 if n.zero?
        1.upto(n).inject(:*)
    end

end