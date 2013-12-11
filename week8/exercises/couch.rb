class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

	[:pillows, :cushions, :dogs].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
	end

	[:pillows, :cushions, :dogs].each do |s|
		define_method("what_are_#{s}") do
			instance_variable_get("@#{s}").each do |colors|
				puts colors
			end
		end
	end

	def method_missing method_name, *args, &block
		puts "You called #{method_name} with #{args}"
	end


end

