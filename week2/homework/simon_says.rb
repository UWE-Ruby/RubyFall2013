module SimonSays
	def echo anything #to pass echo tests
		anything
	end

	def shout anything #to pass shout tests
		anything.upcase
	end

	def start_of_word (anything,n) #to pass array tests
		anything[0...n]
	end

	def first_word anything #to pass first word test
		anything.split.first
	end

	def repeat (anything,n=2) #to pass word repeat tests
		([anything]*n).join(' ')
	end
end
