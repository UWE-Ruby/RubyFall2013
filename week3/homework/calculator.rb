module Calculator
	def sum(list)
		s = 0
		list.each {|i| s +=i}
		s
	end

	def multiply(arg1, arg2=0)
		p = 1
		if arg1.is_a?(Array)
			arg1.each {|i| p *= i}
			p
		else
			arg1 * arg2
	end

	def pow(arg1, arg2)
		p=1
		(arg2).times{p *= arg1}
		p
	end

	def factorial(arg)
		multiply((1..arg).to_a)
	end
end