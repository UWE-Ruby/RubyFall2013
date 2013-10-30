class calculator
	def sum(input)
		input.inject(:+)
	end

	def multiply(*input)
		puts input.inspect
		input.flatten.inject
	end

	def xpo(base, power)
		base**power
	end

	def fac(n)
		return_val=1
		while n > 0
			return_val*=n
			n-=1
		end
		return_val
	end

end
