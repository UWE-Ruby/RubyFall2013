require './named_thing.rb'

Class Monster
include NamedThing
attr_accessor :name, :legs, :dangers, :vulnerabilities, :nocturnal

def initialize legs, nocturnal, name="Monster", vulnerabilities,  dangers=[]
		@legs = legs 
		@nocturnal = nocturnal
		@dangers = dangers
		@vulnerabilities = vulnerabilities
		super name
	end

end