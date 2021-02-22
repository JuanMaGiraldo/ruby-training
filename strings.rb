# block || <<MLS

name = "Juan Manuel Giraldo"

#reverse
name.length.times do |i|
  print name[name.length() -1 - i]
end

puts

puts name.reverse

name_lower = name.downcase

name_capitalize = name_lower[0..4].capitalize() << name_lower[5..11].capitalize() << name_lower[12..].capitalize()

puts name_capitalize

#bang methods
name.upcase!

puts name
