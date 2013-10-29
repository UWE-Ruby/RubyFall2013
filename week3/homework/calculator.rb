class Calculator 

	def sum arr
		sum = 0
		arr.each { |a| sum += a }
		sum
	end

	def multiply arr, opt=0
		product = 1
		if arr.kind_of? Array
			arr.each { |a| product *= a }
		product
		else
			product = arr * opt
		end
	end
		
	def fac n
		product = 1
		1.upto(n) { |a| product = product * a }
		product
	end

	def pow base, power		
		expo = base**power
	end

end