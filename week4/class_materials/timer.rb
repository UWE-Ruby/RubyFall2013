class Timer
	def self.time_code(n=1)
		start_time = Time.now
		n.times{yield}
		end_time = Time.now
		(end_time - start_time) / n.to_f
	end
end