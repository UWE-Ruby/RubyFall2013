class Monster
	include 
	attr_accessor :name, :legs, :dangers, :vulnerabilities, :nocturnal

	def initialize legs, nocturnal, name = "Monster", dangers
		@legs = legs
		@nocturnal = nocturnal
		@dangers = dangers
		@vulnerabilities = vulnerabilities
	end
end		