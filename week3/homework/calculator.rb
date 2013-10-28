class Calculator

	
	def sum(input)
		input << 0
		input.inject(:+)
	end
	
	def multiply(*inputs)
		inputs.flatten.inject(:*)
	end
	
	def pow(input1, input2)
		eval_set = Array.new(input2, input1)
		multiply(eval_set)
	end
	
	def fac(input)
		if input == 0
			1
		else
		multiply((1..input).to_a)
		end
	end
end