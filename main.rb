dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
    new_str = string.downcase.split(' ')
    matches = dictionary.map do |element|
        new_str.to_s.scan(element)
    end
    collection = matches.flatten.inject(Hash.new(0)) do |total, e|
        total[e] += 1
        total
    end
end

puts substrings(string, dictionary)