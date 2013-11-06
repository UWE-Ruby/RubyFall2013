class Timer
	def self.time_code(n=1)
		start_time = Time.now

		# call block n times
		n.times{yield}

		Time.now - start_time
		end_time = Time.now
		(end_time - start_time) / n.to_f
	end
end