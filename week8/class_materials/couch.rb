class Couch
	def initialize(pillows, cushions, dogs)
		@pillows = pillows
		@cushions = cushions
		@dogs = dogs
	end

	[:pillows, :cushions, :dogs].each do |var|
		define_method("how_many_#{var}") do
			puts "1" + self.to_s
			instance_variable_get("@#{var}").size
		end
	end

	puts "2" + self.to_s

	def test
		puts self
		yield
	end

	def self.test2
		puts self
		yield
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


#end