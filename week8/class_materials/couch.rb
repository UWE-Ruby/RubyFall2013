class Couch
	def initialize(pillows, cushions, dogs)
		@pillows = pillows
		@cushions = cushions
		@dogs = dogs
	end

	# METAPROGRAMMING

	[:pillows, :cushions, :dogs].each do |s|

		# Define count methods for each type of instance
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end

		# Define <type>_on_couch?
		define_method("#{s}_on_couch?") do
			not instance_variable_get("@#{s}").empty?
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