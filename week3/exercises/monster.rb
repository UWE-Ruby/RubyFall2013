require './named_thing.rb'
class Monster
	include NamedThing
	attr_accessor :vulnerabilities, :dangers
    attr_reader :nocturnal, :legs
	
	def initialize(noc, legs, name="Monster", vul = [], dangers = [])
		super(name)
		@nocturnal = noc
		@vlunerabilities = vul
		@dangers = dangers
		@legs = legs
	end
end	

require './named_thing.rb'

class Monster
	include NamedThing
	attr_accessor :name, :legs, :dangers, :vulnerabilities, :nocturnal
	def intialize legs, nocturnal, name= "Monster" dangers= [], vulnerabilities= [],
		@legs = legs
		@nocturnal = nocturnal
		@dangers = dangers
		@vulnerabilities = vulnerabilities
		super name
		
	end