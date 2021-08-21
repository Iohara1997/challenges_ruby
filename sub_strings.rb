dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, substrings)
    hash = Hash.new(0)
    array_downcase = phrase.downcase
    array_phrase = array_downcase.split(' ')
    substrings.each do |string|
        count = 0
        for i in array_phrase do
            if(i.match?(string))
                count += 1
                hash[string] = count
            end
        end
    end
    puts hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)