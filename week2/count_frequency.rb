def count_frequency(word_list) 
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  counts
end

p count_frequency(["sparky", "the", "cat", "sat", "on", "the", "mat"])
