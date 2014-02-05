class Calculator

	# sum of array of numbers
	# converts to an integer
	# If blank, then converts to zero
	# inject "accummulate"
	def sum(val)
		val.inject(0){|sum, n| sum + n }
		#val.inject(0, :+)
	end

=begin
	def sum val
		result = 0
		#loop thru array
		val.each do |i|
			result += i
		end
		result
	end
=end

	# multiply array of numbers
	# * splat means any number of arguments
	# flatten method: pass in as many arguments as you want,
	# flatten method: for every element that is an array, extract its elements into the new array
	# flatten method: always going to get back a single array
	def multiply(*val)
		val.flatten.inject(1, :*) 
	end
	
	# raises one number to the power of another number
	def pow (base, exp)  
	 # base**exp
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

=begin
	def fac(num)
		return 1 if num==0
		num * fac(num-1)
	end

	def fac(num)
		# a range of array
		# (1..n).to_a.inject(:*)

		# another option
		product = 1
		1.upto(n){|i| product += 1}
		product
	end
=end
end
