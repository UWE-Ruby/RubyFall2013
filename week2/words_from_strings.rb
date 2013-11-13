def words_from_string(string) 
  string.downcase.scan(/[\w']+/)
end

p words_from_string("But I didn't inhale, he said (emphatically)")
