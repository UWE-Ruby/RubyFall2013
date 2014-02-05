class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

#	[:pillows, :cushions, :dogs].each do |s|
#		define_method("how_many_#{s}") do
#			instance_variable_get("@#{s}").count
#		end
#	end

	[:pillows, :cushions ].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
	end

		define_method("#{s.to_s.gsub('s', '')}_colors") do
			instance_variable_get("@#{s}").each do | color |
			puts color
		end
	end
end
