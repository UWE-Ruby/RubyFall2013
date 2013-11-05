module Worker 

	def Worker.work param1=1
			param1.times.inject(0){yield}
	end
end