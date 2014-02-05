require './named_thing'
class person

	include NameThing
=begin
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		super(noc,legs,name,vul,dangers)
	end
=end

	def shout_name
		"MY NAME IS #{@name.upcase}"
	end

end
