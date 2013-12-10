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

	def Celsius_convertion
	    (@unit *  (9.0/5.0) + 32.0).round(1)	
	end
end
