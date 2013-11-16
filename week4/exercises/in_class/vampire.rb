require './monster.rb'

Class Vampire < Monster

	def initialize legs = 2,  nocturnal, name = "vampire", dangers =[:bites], vulnerabilities = [:sunlight, :garlic]
		super legs, nocturnal, name="monsters", dangers, vulnerabilities
	end
end
