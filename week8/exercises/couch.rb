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

	[:pillows, :cushions,].each do |x|
		define_method("what_color_are_the_#{x}") do
			instance_variable_get("@#{x}").each do |color| puts color end
		end
	# def method_missing  method_name, *args, &block
	# 	puts "you called #{method_name}"

	# end


	end
end