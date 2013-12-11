class Couch
	def initialize(pillows, cushions, dogs)
		@pillows = pillows
		@cushions = cushions
		@dogs = dogs

		def colors (color_pillow, color_couch)
			@color_pillow = color_pillow
			@color_couch = color_couch
	   end

	   [:color_pillow, :color_couch].each do |color|
	   		define_method("What color are_#{color}") do
	   			instance_variable_get("@#{color}").count
	   		end
	   	end

	[:pillows, :cushions, :dogs].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
	end

		def how_many_pillows
		@pillows.size
		end

		def how_many_cushions
			@cushions.size
		end

		def how_many_dogs
			@dogs.size
		end

		[:pillows, :cushions, :dogs].each do |var|
			define_method("how_many_#{var}") do
				instance_variable_get("@#{var}").size
			end
		end
end

	# def to_str
	# 	"I am a Couch"
	# end

	# def respond_to?(meth)
	# 	true
	# end

	# def method_missing(meth, *args, &block)
	# 	puts "You called #{meth} with #{args.join(' ')}"
	# 	puts "#{self}"
	# 	self.class.class_eval do
	# 		define_method(meth) do
	# 			puts "hi"
	# 		end
	# 	end

	# 	self.send(meth)
	# end


end