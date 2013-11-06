class Worker
	def self.work n = 1
		# results = nil
		# n.times {results = yield}
		# results 
		#n.times.inject (nil) {|results, i| yield}
		n.times.inject(nil) {yield}
	end


end