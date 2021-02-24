
def longest_word(sentence)
  max_word = ""
  sentence.split(" ").each { |word| max_word = word if word.size >= max_word.size}
  max_word
end

p longest_word "Ruby is my favorite language"

#ridex, returns the index of the last object

#name.each_char == name.split("").each == name.chars.each


#squeeze: the same characters in a string are replaced by a single character.
"putters shoot balls".squeeze("m-z")   #=> "puters shot balls"

def custom_squeeze(string)
  final = ""
  last_char = ""
  string.each_char do |char|
    final << char if char != last_char
    last_char = char
  end
  final;
end

word = "HHHHiiiii   woooorrrrldd!!!."
p custom_squeeze(word)
p custom_squeeze(word) == word.squeeze


def custom_delete(string, delete_characters)
  (string.split("").map { |char| char unless delete_characters.include?(char) }).join("")
end

p custom_delete(word, "Hiw ")
