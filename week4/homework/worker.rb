#@module Worker  
class Worker

=begin       trivial case 
	def work no_of_times=1
		yield
		yield
		yield
	end

=end

#=begin       named block, iterative case FAIL ==> returns value of no_of_times in every test
	def self.work no_of_times=1
		result = ""
		no_of_times.times {	result = yield if block_given? }
		result
	end
#=end

=begin       named block, trivial case
	def self.work no_of_times=1
		no_of_times.times { return yield }
	end
=end

=begin       named block, trivial case
	def self.work no_of_times=1
		1.upto(no_of_times) { yield }
	end
=end

end




# While this fulfills the literal requirement of the test conditions AS STATED including
# "executes a block 3 times and returns the result" (regardless of the parameter passed),
# it does seem to be a trivial non-general case. It should execute the block n times for any 
# value of n passed. 

# I have not figured out how to execute yield multiple times, and the things that seem to make 
# sense all deliver different results, in part because they seem to redefine the block_given
# in the process of writing a new block. 

# Tried &parameter naming as an argument, and n parameter.call s, but that didn't work either.