class Worker
	def self.work(n=1)
    	(0..n).reduce { yield }
	end
end
