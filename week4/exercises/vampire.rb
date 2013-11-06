require './monster.rb'

class Vampire < Monster 

  def initialize legs = 2, nocturnal = true, name = "Vampire", dangers = [:bites], vulnerabilities = [:sunlight, :garlic]
    super
  end
end