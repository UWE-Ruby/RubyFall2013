class Worker
	def self.work(n = 1)
		n.times.inject(nil){yield}
	end
end		
