class Calculator

	def sum (a)
		if a.any?
			a.each.reduce(:+)
		else
			a = 0
		end		
	end

	# in class example
	def sum input
		result = 0
		input.each do |i|
			result += i
		end	
		result
	end	

	# in class example
	def sum input
		input.eject (0, :+) #starts at the 0 spot in the array, does the "+" to everything

	def multiply (*b) 	#the splat operator accepts any number of arguments.  
						#puts them into an array. arrays will become arrays of arrays, 
						#you'll have to flatten if arrays are being passed in
		if (b.kind_of?(Array))
			b.each.reduce(:*)
		else 
			num.each { |i| puts b * c}	
		end	
	end

	# in class example
	def multiply *inputs
		input.flatten.inject (0, :*) 	#this does the same as the addiditon above, 
	end									#but flatten is necessary because of the splat (*)

	def pow (p, q)
		p ** q
	end	

	# in class example
	def fac n
		(1..n).to_a.inject(:*) #uses a range from 1 up to the number necessary, makes it an array and multiplies
	end

	# in class example
	

	
	def fac (f)
		if f != 0
			(f).downto(1).reduce(:*)
		else
			f = 1	
		end	
	end	
end	