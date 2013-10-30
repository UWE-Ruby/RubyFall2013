module Summable
	def sum(whatever)
		if whatever != []
			whatever = whatever.flatten
			whatever.inject(:+)
		else
			whatever = 0
		end
	end
end

module Empowerable
	def pow(whatever, anything)
		whatever**anything
	end
end

module Multipliable
	def multiply(whatever,anything)
		if anything != nil
			anything*whatever
		else
			anything = 1
			whatever = whatever.flatten
			whatever.inject(:*)*anything
		end
	end
end

module Factorialize
	def fac(whatever)
		if  whatever<=1
			1
		else
			whatever * fac(whatever-1)
		end
	end
end


class Calculator
	include Enumerable
	include Summable
	include Empowerable
	include Multipliable
	include Factorialize
end

