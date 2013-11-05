require './named_thing'

class Person
<<<<<<< HEAD
	attr_accessor :name

	def initialize name
		@name = name
	end
end		
=======
  include NamedThing

  def shout_name
    "MY NAME IS #{@name.upcase}"
  end
end
>>>>>>> upstream/master
