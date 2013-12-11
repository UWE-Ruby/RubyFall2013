class Converter

	def initialize(unit)
		@unit = unit.to_f
	end

	def type=(type)
		@type = type
	end

	def convert
		self.send("#{@type}_conversion")
	end

	def Fahrenheit_conversion
		((@unit - 32.0) *(5.0/9.0)).round(1)
	end
end