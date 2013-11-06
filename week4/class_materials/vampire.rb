require './monster2'

# vampire inherits from Monster class
# dont need to include NameThing if inheriting
class vampire < Monster

	#include NameThing

	# on init there's nothing required for vampire
	# what's set in init is the default
	def initialize(nocturnal=true, legs=2, name ="Vampire", vulnerabilities=[:garlic, :sunlight], dangers=[:bites])
		super(nocturnal,legs,name,vulnerabilities,dangers)
	end

=begin
	def shout_name
		"MY NAME IS #{@name.upcase}"
	end
=end

end
