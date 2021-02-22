#rocket operator: =>

dict = {"Tom Brady" => "New England Patriots",
        "Tomo Romo" => "Dallas Cowboys",
        "Rob Gronkowski" => "New England Patriots"}


p dict["Rob Gronkowski"]

dict[:name] = "Juan Ma"
dict.store(:age, 20)
p dict[:name]
p dict[:age]


#dict.each { |key| p key[0]}

dict. each do |key, value|
  puts "Key: #{key}"
  puts "Value: #{value}"
end

=begin
The principal difference between Strings and Symbols:
 -Strings are used to work with data.
 -Symbols are identifiers.
 -Symbols look better, they are immutable and if you benchmark string keys vs symbols keys you will find that string keys are about 1.70x slower.
=end

#create a array of Symbols
symbols = %i(a b c)
p symbols

#get keys
puts "Keys:"
p dict.keys
puts "Values:"
p dict.values

#default values
#dict = Hash.new("Not found") o:
dict.default = "Not found"
p dict[:none]

toArray =  dict.to_a
p toArray
p toArray.to_h

#key? == has_key? -  value? == has_value?

p dict.value? "New England Patriots"

newDict = {a: 1, b:2 , c:3, d: 4}
removed = newDict.delete(:a)
p newDict
p removed

p newDict.select { |key,value| value >= 3 }
p newDict.reject { |key,value| value >= 3 }

newDict.merge!(dict)
p newDict

def word_count(string)
  dict = {}
  dict.default = 0
  string.each_char { |char| dict[char] += 1}
  dict
end


word = "Once upon a time in a land far far away"
p word_count(word)

pokemon = {squirtle: "water", bulbasaur: "grass"}
p pokemon.sort
