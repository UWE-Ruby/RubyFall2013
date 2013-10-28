$monsters = []

$monsters << {
	:name => 'Zombie',
	:nocturnal => false,
	:dangers => ['bites', 'scratches'],
	:vulnerabilities => ['fire', 'decapitation'],
	:legs => 2
}
$monsters << {
	:name => 'Mummy',
	:nocturnal => false,
	:dangers => ['bites', 'scratches', 'curses'],
	:vulnerabilities => ['fire', 'decapitation', 'cats'],
	:legs => 2
}
$monsters << {
	:name => 'Vampire',
	:nocturnal => true,
	:dangers => ['bites', 'hypnosis'],
	:vulnerabilities => ['wood', 'decapitation', 'crosses', 'holy_water', 'garlic', 'daylight'],
	:legs => 2
}
$monsters << {
	:name => 'Werewolf',
	:nocturnal => true,
	:dangers => ['bites', 'scratches'],
	:vulnerabilities => ['silver'],
	:legs => 4
}
$monsters << {
	:name => 'Blob',
	:nocturnal => false,
	:dangers => ['suffocation'],
	:vulnerabilities => ['CO2', 'ice', 'cold'],
	:legs => 0
}

'''
  >>How many nocturnal?
$monsters.count {|m| m[:nocturnal]}

  >>Names of nocturnal?
$monsters.count {|m| m[:nocturnal]}.map{|m| m[:name]}

  >>How many legs do all our monsters have?
legs = 0
$monsters.inject(0){|legs, m| legs += m[:legs]} 
	OR
$monsters.map{|m| m[:legs]}.reduce(:+) #maps all legs, then reduces them

  >>Most common danger?
dangers = $monsters.map{|m| m[:dangers]}
dangers.flatten!  #flattens several arrays into 1 array
dangers.inject(Hash.new(0)){|hist, danger| hist[danger]+=1}  ##this isnt working

'''