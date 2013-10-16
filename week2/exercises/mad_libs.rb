puts "Please enter a noun"
noun = gets.chomp
puts "Please enter an adjective"
adjective = gets.chomp
puts "Please enter a past tense action verb"
verb_past_tense = gets.chomp
puts "What does the #{noun} say?"
says = gets.chomp
story = "The #{adjective} #{noun} #{verb_past_tense} past the graveyard and says #{says}"
puts story
