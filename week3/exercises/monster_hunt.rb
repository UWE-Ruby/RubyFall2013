# monster hunt
require "./monsters.rb"

# 1. how many are nocturnal
nm = $monsters.select{|m| m[:nocturnal] == true}
puts "nocturnal monster count: #{nm.count}"

# 2. What are names of monsters that are nocturnal
nm.map{|m| m[:name] }

# 3. How many legs do all monsters have
$monsters.map {|m| m[:legs] }.inject(:+)
$monsters.inject(0){ |legs, m| legs+= m[:legs] }

# 4. What are the top two most common dangers in all monsters?
dangers = $monsters.map {|m| m[:dangers] }.flatten
counter = Hash.new(0)
dangers.each {|d| counter[d] += 1 }
puts counter.first(2).inspect

