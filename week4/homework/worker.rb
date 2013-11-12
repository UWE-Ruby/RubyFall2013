#class Worker
#	# this is a class level method
#	def self.work x=1
#		if x == 1 
#		  yield
#		else
#		 x = x - 1 
#		 x += yield
#
#		end
#	end	
#end



# class anserr
#class Worker
#	# this is a class level method
#	def self.work n=1
#		  results = nil 	
#		  n.times { results = yield }
#		  results
#	end	
#end


# teachers answer 
class Worker
	# this is a class level method
	def self.work n=1
		n.times.inject(nil){yield}
	end	
end
