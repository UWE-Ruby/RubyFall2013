#Build a calculator module

class Calculator

	def initialize
	end

# Adds all integers in an array
	def sum(num)
	  list = Array.new(num)
	  list.reduce(0, :+)
	end  

# Multiplies all integers in an array
	def multiply(num)
	  list = Array.new(num)
	  list.reduce(0, :*)
	end

# Gets the factorial (product of all numbers up to target number)
	def factorial(num)
	  1.upto(num).to_a.inject(:*)
	end  

end