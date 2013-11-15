require './monster.rb'
class Vampire < Monster
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		super(noc,legs,name,vul,dangers)
	end
end


inheritance below

require './monster.rb'
class Vampire < Monster
	def intialize legs = 2, nocturnal = true, name = "Vampire", dangers = [:bites], vulnerabilities = [:garlic, :sunlight]
		super
		
	end