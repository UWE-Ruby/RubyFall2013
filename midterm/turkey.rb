class Animal
	attr_accessor :weight
	def initialize(weight)
		@weight = weight
	end
end

class Turkey < Animal
	def gobble_speak(monkey_talk)
	  monkey_talk.gsub(/\b\w*/) do |w|
	  	if w[0] =~ /[A-Z]/
	  		"Gobble"
	  	elsif w[0] =~ /[a-z]/
	  		"gobble"
	  	end
	  end.gsub(/\b\w*'\w*\b/) do |w| 
	  	if w[0]=='G'
	  		"Gobb'le" 
	  	else
	  		"gobb'le"
	  	end
	  end
  end
end
