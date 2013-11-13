class Worker
	def self.work (n=1, &block) 
		n.times do |y|
			return yield if (n+=1) == times
			#return yield if (n+=1).times
			#(n.zero? yield : (n-1).times {yield } )
			#some experimental options
			yield
		end
	end
end

