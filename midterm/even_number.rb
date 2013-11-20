class EvenNumber
	include Enumerable
	attr_reader :input
	def initialize *input
		@input = input
		check = true
		@input.each do |i|
			if i.odd?
				check = false
			end
		end
		if not check
			@input = "even numbers only buddy"
		end
		@current = -1
	end

	def compare a, b
		if @input.is_a?(Array)
			output = false
			if @input[a] == @input[b]
				output = true		
			end
			output
		end
	end

	def range a,b
		r = @input[a]..@input[b]
		out = r.step(2).to_a
		out
	end

	def next
		@current += 1
		@input[@current]
	end
end