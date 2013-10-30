class Calculator
	def sum  input
		input.reduce(:+)#.to_f # Class notes ( result = 0, input.each do  |i| result +=1
	end
	
	def multiply a, b=1
		[a, b].flatten.reduce(:*).to_f
	end

	def fac a 
		(1..(a.zero? ?  1 : a)).inject(:*) 
	end

	def pow a, b
		a**b 	
	end

end