module Worker

	def self.work n=1 #sets a default value, thus making param optional

		results = nil #initialize results to neutral format 
		n.times {results = yield} #to satisfy third test
		results #show results

		end

end
