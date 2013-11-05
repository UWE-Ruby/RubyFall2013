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
$monsterss.select{|m| m[:legs] == 2}.count

$monsters.count{|m| m[:nocturnal]}

$monsters.count{|m| m[:nocturnal]}.each{|m| puts m[:name|}

$monsters.each{|m| legs += m[:legs]}

$monsters.inject(0) {|legs, m| legs += m}

$monsters.map{|m| m[:legs]}.inject(:+)

dangers = $monsters.map{|m| m[:dangers]}