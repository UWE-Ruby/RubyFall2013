require './named_thing'

class Person 
	include NamedThing

	def shout_name
		"My NAME IS  #{@name.upcase}"
	end

end
