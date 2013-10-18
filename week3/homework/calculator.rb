class Calculator

	# computes sum of two or more numbers
	def sum(numbers)
		#numbers.inject(:+)
		numbers.inject(0){|sum, a| sum +a}
	end

    # multiplies two numbers or an array of numbers
	 #def multiply(*numbers)
	 #	result = 1
	 #	numbers.each {|n| result = result * n}
     #  result
	 #end
	 def multiply(*numbers)
	 	#numbers.inject(:*)
	 	#numbers.inject(1){|product, n| product * n}
	 	puts numbers.inspect
        numbers.flatten.inject(:*)
	 end

	# raises one number to the power of another
	def pow(base, power)
		base**power
	end

    # http://en.wikipedia.org/wiki/Factorial
	def factorial(n)
        #?????  
    end

end