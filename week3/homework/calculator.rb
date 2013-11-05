class Calculator
	def sum list
		s = 0
		list.each {|i| s +=i}
		s
	end

	def multiply *input
		input.flatten.inject(:*)
	end

	def pow arg1, arg2
		p=1
		(arg2).times{p *= arg1}
		p
	end

	def factorial arg
		return 1 if arg==0
		multiply((1..arg).to_a)
	end
end