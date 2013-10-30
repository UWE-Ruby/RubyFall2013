class Calculator

	# sum of array of numbers
	# converts to an integer
	# If blank, then converts to zero
	# inject "accummulate"
	def sum(val)
		val.inject(0){|sum, n| sum + n } 
	end
	
	# multiply array of numbers
	# flatten: for every element that is an array, extract its elements into the new array
	def multiply(*val)
		val.flatten.inject(1, :*) 
	end
	
	# raises one number to the power of another number
	def pow (base, exp)  
 	 ([base] * exp).inject(:*)  
	end
	
	# computes factorials
	# recursive defintion: a method calls on itself inside itself
	# without recursion:  num.inject {|product, n| product * n }
	def fac(num)
	  if num == 0
	    1
	  else
	    num * fac(num - 1)
	  end
	end
end
