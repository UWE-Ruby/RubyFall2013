class Calculator
	attr_accessor  :array, :array_prod, :product, :num, :num_val, :power

	def sum (array=0)
		@array = array
		array.inject{|memo, n| memo + n}
	end


	def multiply (array_prod)
		@array_prod = array_prod
		@product = product
		@product = array_prod.inject{|memo, n| memo * 2}

	end

 	def fac(num)
 		@num = num
 		(1..num).inject (:*)  
	end

	def pow (num_val, power)
		@num_val = num_val
		@power = power
		num_val ** power
	end
	
 end