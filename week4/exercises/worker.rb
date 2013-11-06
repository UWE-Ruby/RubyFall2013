class Worker
	def self.work(loop_count = 1)
  	(0..loop_count).inject {yield}
	end
end