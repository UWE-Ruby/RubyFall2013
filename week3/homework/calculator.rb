class Calculator

	def sum input
		input.inject(0, :+)
	end

	def multiply *input
        input.flatten.inject(:*)
	end

    def pow input1, input2
	    input1**input2
	end

	def fac input
		(1..input).inject(:*) || 1	
	end
end