require './named_thing.rb'
# encoding: UTF-8
# This is a thing
# We are learning about rdoc
# Author:: Renée
class Thing
	include Enumerable
	include NamedThing
	# This is an rDoc thing
	# * This method does this
	# * And this
	def do_something 
		yield
	end
end
