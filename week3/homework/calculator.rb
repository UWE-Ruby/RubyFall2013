class Calculator
	def sum  input
		input.reduce(:+).to_f
	end
	
	def multiply a, b=1
		[a, b].flatten.reduce(:*).to_f
	end

	def fac a
		if a == 0
			a=1
			else
			(1..a).inject(:*)
		end
	end

	def pow (a, b)
		a**b 	
	end

end