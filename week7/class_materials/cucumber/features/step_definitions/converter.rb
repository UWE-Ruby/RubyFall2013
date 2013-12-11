class Converter

	# must accept celcius value
	def initialize(cel_val)
		@cel_val = cel_val.to_f
	end

	def type=(type)
		@type = type
	end

	def convert
		self.send("#{@type}_convertion")
	end

	def Celsius_convertion
	    (@cel_val *  (9.0/5.0) + 32.0).round(1)	
	end
end
