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

	[:pillows, :cushions, :dogs].each do |s|
		define_method("#{s. to_s.gsub('s', '')colors}") do
			instance_variable_get("@#{}{s}").each do |color
	end

	def method_missing method_name, *args, &block
		puts "You called #{method_name} with #{args}"
		define_method method_name do |*args|
			puts "hello there!"
	end
end
self.send method_name
		
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