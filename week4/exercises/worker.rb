class Worker
	def self.work(rep=1)
#		res = 0
#		rep.times {res = yield }
#		res
		rep.times.inject(nil){yield}
	end
end