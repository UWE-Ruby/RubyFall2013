require './named_thing.rb'
class Monster

	# include NamedThing module
	# modules can't inherit but can include another module
	# modules can't instantiate
	include NamedThing

	attr_accessor :name, :legs, :vulnerabilities, :dangers, :nocturnal
	
	# [] optional
	def initialize(nocturnal, legs, name="Monster", vulnerabilities = [], dangers = [])
		# set the attributes
		super(name) # pass name to intialize method, puts it above the module
		@nocturnal = nocturnal
		@vlunerabilities = vulnerabilities
		@dangers = dangers
		@legs = legs
	end
end	
