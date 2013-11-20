=begin
	attributes: weight
	responds to: gobble_speak
	inherits from: Animal
=end
class Animal
end

class Turkey < Animal
	attr_reader :weight
	def initialize weight
		@weight = weight
	end

	def gobble_speak input
		text = input.split
		out = text.map do |i|
			gobble_maker(i)
		end
		out.join(" ")
	end

	def gobble_maker word
		cap = false
		out = "gobble"
		punct = ""
		if word[0] =~ /[A-Z]/			#check if word is capitalized and match the case
			out = out.capitalize
		end
		while word[-1] =~ /[;:.,!?'"]/		#find and grab all punctuation marks from end of word 
			punct += word[-1]
			word.chop!
		end
		punct.reverse!
		apost = word=~/'/	#finds the apostrophe and inserts it proportionally where it should go in "gobble", rounding down to discourage end-of-word apostrophe placement
		if apost
			apost = ((Float(apost+1) / word.length) * 6) - 0.5
			out.insert(apost.round, "'")
		end
		out + punct 	#put it all together
		
	end


end
