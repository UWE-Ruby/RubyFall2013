require './code_timer.rb'

describe CodeTimer

class CodeTimer
	def self.time_code n=1
		start_time = Time.now
		yield
		Time.now - start_time
		
	end