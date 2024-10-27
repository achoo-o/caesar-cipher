def substrings(input, dict)
  hash = {}
  words = input.downcase
  dict.each do |entry|
    regex = Regexp.new "#{entry}"
    if regex.match(words) then hash["#{entry}"] = words.scan(regex).size end
  end
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)