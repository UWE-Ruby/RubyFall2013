require './named_thing.rb'

class Monster
  include NamedThing
  attr_accessor :legs, :dangers, 
    :vulnerabilities, :nocturnal

  def initialize legs, nocturnal, name="Monster", dangers=[], vulnerabilities=[]
    @legs = legs
    @nocturnal = nocturnal
    @dangers = dangers
    @vulnerabilities = vulnerabilities
    super name
  end

end