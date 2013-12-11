class Calculator
	
	def sum array
		if array == []
			0
		else
		array.inject{|n, x| n += x}
		end
	end

	def multiply (*number)
		number.flatten.inject{|n,x| n *= x}
	end

	def pow a, n
		a ** n
	end

	def fac n
		if n == 0
			1
		else
			n * fac(n-1)
		end
	end
end