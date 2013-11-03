require './named_thing'

class Person
  include NamedThing

  def shout_name
    "MY NAME IS #{@name.upcase}"
  end
end