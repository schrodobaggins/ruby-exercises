# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that was found in the original 
# string and how many times it was found.

# Quick Tip:
# Recall how to turn strings into arrays and arrays into strings.


#  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# > substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

# Next, make sure your method can handle multiple words:

# > substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  result = Hash.new(0)
  lowered_text = text.downcase

  dictionary.each do |word|
    matches = lowered_text.scan(word).length
    result[word] = matches unless matches == 0
    end
result
end
puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)