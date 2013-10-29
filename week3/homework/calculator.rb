class Calculator

	def sum(numbers)
	  numbers.inject(0){|sum, a| sum +a}
	end

	def multiply(*numbers)
	  numbers.flatten.inject(:*)
	end
	
	def pow(base, power)
	  base**power
	end

	def fac(n)
	  return 1 if n.zero?
	  1.upto(n).inject(:*)
	end

end