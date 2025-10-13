dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, array)
  splitted = input.downcase.scan(/\w+/)
  matches = Hash.new(0)
  splitted.each do |elem|
    array.each do |string|
      if elem.match(string)
        matches[string] += 1
      end
    end
  end
  matches
end

substrings("Howdy my friend? Put your signature below!", dictionary)