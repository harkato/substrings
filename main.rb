def substrings(string, dictionary)
  dictionary.reduce({}) do |key, value|
    if key[value] == string
      key
    end
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("go", dictionary)