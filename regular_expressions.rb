phrase = "The ruby programming is... 2321 32 32"

def custom_start_with?(string, substring)
   string.downcase[0, substring.length] == substring
end

puts phrase.downcase.start_with?("the")
puts custom_start_with?(phrase,"the")
puts phrase.downcase.end_with?("is...")

puts

p phrase =~ /ruby/
p phrase.include?("ruby")
p phrase.scan(/ruby/)
p phrase.scan(/[ruby]/) #math r or u or b or y

puts

p phrase.scan(/\d/)
p phrase.scan(/\d+/) { |digit_match| puts digit_match.length } #any digit + -> one or more
# . -> Wild card symbol
p phrase.scan(/T.*ing/)

#  \d -> any digit  \D -> none digit
# \s -> any white space \S -> none white space

p phrase.scan(/\S+/) #words separeted by space == split(" ")


# \A at the beggining
# \z at the end
p phrase.scan(/\AThe/)
p phrase.scan(/32\z/)
puts
# ^ exclude
p phrase.scan(/[^aeiouAEIOU,.\s\d]/)

word = "aspirin"
word.sub!("in","ing")
p word

word.gsub!("i","-")
p word

p "(555)-55 1234".gsub(/[-\s\(\)]/,"")
