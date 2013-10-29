class Calculator

	def pow(val1, val2)
		val1**val2
	end

	def sum(the_input)
		the_sum = 0
		the_input.each do |value|
			the_sum += value
		end
		return the_sum
	end

	def fac(x)
		(1..(x.zero? ? 1 : x)).inject(:*)
	end

# the version below works for multiple values and arrays
	def multiply(*input)
		input.flatten.inject(:*)
	end

end
