class Worker
	def self.work(n=1)
		(n-1).times{yield}
		yield
	end
end