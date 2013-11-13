class Calculator

	def sum(sum_arg)
		sum_arg.inject(0) { |sum, a| sum + a}
	end

	def multiply(*product_arg)
		product_arg.flatten.inject { |product, a| product * a}
	end

	def pow(base,power)
		(base ** power)
	end

	def fac(fact)
		return 1 if fact.zero?
		fact.downto(1).inject { | product, a | product * a}
	end

end