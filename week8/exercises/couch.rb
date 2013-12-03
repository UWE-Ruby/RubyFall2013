class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

	[:pillows, :cushions].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end

    define_method("#{s.to_s.gsub('s', '')}_colors") do
      instance_variable_get("@#{s}").each do |color|
        puts color
      end
    end

	end

  def respond_to? method_name
    true
  end


  def method_missing method_name, *args, &block
    puts "You called #{method_name} with #{args}"
    puts self
    self.class.class_eval do 
      define_method method_name do |*args, &some_code|
        block.call if block_given?
        some_code.call unless some_code.nil?
      end
    end

    self.send method_name, args


  end


end