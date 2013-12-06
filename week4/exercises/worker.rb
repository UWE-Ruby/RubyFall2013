class Worker
	def self.work x=1
		if x == 1 
		  yield
		else
		 x = x - 1 
		 x += yield

		end
	end	
end
