class Converter

	def initialize(unit)
		@unit = unit.to_f
	end

	def type=(type)
		@type = type
	end

	def convert
		self.send("#{@type}_convertion")
	end

	def Fahrenheit_convertion
		((@unit - 32) * 5/9).round(1)
	end
end
