class Couch
	def initialize(pillows, cushions, dogs)
		@pillows = pillows
		@cushions = cushions
		@dogs = dogs
	end

	[:pillows, :cushions, :dogs].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
	end


	[:pillows, :cushions, :dogs].each do |var|
	define_method("how_many_#{var}") do 
			instance_variable_get("@#{var}").size
		end

	end


#  non dry way
	# def how_many_pillows
	# 	@pillows.size

	# end


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