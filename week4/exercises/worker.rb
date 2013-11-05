class Worker
	def self.work(number=1)
		number.times.inject(nil){yield}
	end
end