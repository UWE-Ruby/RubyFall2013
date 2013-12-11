class Worker
	# self. class level method
	# (n=1) gives it a default value bc it's optional
	# represent number of times code should be running
	def self.work(n=1)
    	(0..n).reduce { yield }

    	#accumulation of 
    	#result = nil
    	#n.times = {result = yield}
    	#result

    	#enumerator: an object, foundation of :each method
    	#allows us to traverse collection of things (iterator)
    	#inject sets to nil and give a value to our block each time we call the block
    	#n.times.inject{yield}
	end
end
