#!/usr/bin/ruby

class Calculator
	def initialize
		@total = 0
	end
	def sum (num)
		num.each { |a| @total += a}
		@total
	end

	def multiply (num, num1=0)
		value = 0
		if (num1 != 0)
			value = num * num1
		else
			value = num.inject (:* )
		end
	end

	def pow (num1, num2)
		value = 1
		1.upto(num2).each do |v|
			value *= num1 
		end
		value
	end

	def fac (num)
		value = 1
		1.upto(num).each do |v|
			value *= v
		end
		value
	end

end