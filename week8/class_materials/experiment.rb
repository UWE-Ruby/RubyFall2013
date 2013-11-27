class Object
	def call_chain
		"Object"
	end
end

class Animal
	def call_chain
		"Animal.#{super}"
	end
end

module NamedThing
	def call_chain
		"NamedThing.#{super}"
	end
end

module Speaker
	def call_chain
		"Speaker.#{super}"
	end
end

class Person < Animal
	include NamedThing
	include Speaker
	def call_chain
		"Person.#{super}"
	end
end

class Renee < Person
	def call_chain
		"#{self}.#{super}"
	end
end

