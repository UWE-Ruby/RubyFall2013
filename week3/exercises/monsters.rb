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


puts "How many monsters are nocturnal?"
puts $monsters.count{|m| m[:nocturnal]}

puts "What are the names of the monsters that are nocturnal?"
puts $monsters.select{|m| m[:nocturnal]}.map{|m| m[:name]}

puts "How many legs do all our monsters have?"
puts $monsters.map{|m| m[:legs]}.inject(:+)

puts "What are the 2 most common dangers and vulnerabilities of our monsters?"
puts "2 most common dangers:"
puts $monsters.map{|m| m[:dangers]}.flatten.inject(Hash.new(0)){|h,d| h[d] += 1; h}.sort_by{|k,v| v}[-2..-1].map{|a| a[0]}
puts "2 most common vulnerabilities:"
puts $monsters.map{|m| m[:vulnerabilities]}.flatten.inject(Hash.new(0)){|h,v| h[v] += 1; h}.sort_by{|k,v| v}[-2..-1].map{|a| a[0]}

