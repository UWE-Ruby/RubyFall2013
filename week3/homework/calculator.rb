class Calculator
	

	def sum array 
#		array.inject(0){|memo, n| memo + n}
		array.inject(0, :+)
	end

# def sum input
# 	result = 0 
# 	input.each do | i |
# 		result += i
# 	end
# 	result

	# def multiply (array_prod)
	# 	@array_prod = array_prod
	# 	@product = product
	# 	@product = array_prod.inject{|memo, n| memo * 2}

	# end

	def multiply *args
		args.flatten.inject(:*)
	end

	def pow (num_val, power)
		num_val ** power
	end

 	def fac(num)
 		(1..num).to_a.inject (:*)  
	end
 end