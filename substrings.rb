def substrings(text, dictionary)
  text.downcase.split.reduce(Hash.new(0)) do |hash, word|
    dictionary.each do |string|
      if word.include?(string)
        hash[string] += 1
      end
    end

    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy",
"it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
