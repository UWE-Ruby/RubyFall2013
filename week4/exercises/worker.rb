class Worker

# this only works for one block execution
#
#	def self.work
#		yield
#	end
#
# this works for all blocks in this exercise
#
	def self.work(count = 1)
		(0..count).inject {yield}
	end

end
