require './named_thing.rb'

class Monsters
	include NamedThing
	attr_accessor :names, :legs, :dangers, :vulnerabilities, :nocturnal

	def initialize legs, nocturnal, name="Monster", dangers=[], vulnerabilities=[]
		@leg = legs
		@nocturnal = nocturnal
		@dangers = dangers
		@vulnerabilities = vulnerabilities
		super name
	end
end
