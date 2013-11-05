class Worker
	def self.work i = 1
		i.times.inject(0){yield}
	end
end