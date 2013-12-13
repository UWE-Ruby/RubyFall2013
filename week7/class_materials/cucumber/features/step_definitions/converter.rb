class Converter

	def initialize(unit)
		@unit = unit.to_f
	end

	def type=(scale)
		@scale = scale
	end

	def convert
		self.send("#{@scale}_conversion")
	end

	def Celsius_conversion
		@unit * 9/5 + 32
	end
end