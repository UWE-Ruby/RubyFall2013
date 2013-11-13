Class Timer

	def self.time_code
		start_time = Time.now
		yield
		Time.now - start_time
	end

end