class Calculator

	def sum (a)
		if a.any?
			a.each.reduce(:+)
		else
			a = 0
		end		
	end

	def multiply (*b)
		if (b.kind_of?(Array))
			b.each.reduce(:*)
		else 
			num.each { |i| puts b * c}	
		end	
	end

	def pow (p)
		(p).reduce(:**)
	end	

	def fac (f)
		if f != 0
			(f).downto(1).reduce(:*)
		else
			f = 1	
		end	
	end	
end	