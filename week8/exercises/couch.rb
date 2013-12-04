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



	[:pillows, :cushions].each do |s|
		define_method("#{s.to_s}_colors") do
			collection = instance_variable_get("@#{s}")
			puts collection
		end
	end


	def method_missing(name, *args, &block)
		puts "GOT NOTHING SUCKER"

		# define missing method
		# change self to the class
		self.class.class_eval do

			puts "Don't have #{name}."
			puts "Making..."

			# NOW IN CLASS INSTANCE
			define_method name do |*args, &method_block|
				puts "Method #{name}"
			end

		end

		self.send name, args, block


	end

end


c = Couch.new([:pink, :white],[:green])
c.zzzzzz
c.zzzzzz
c.zzzzzz
c.zzzzzz




