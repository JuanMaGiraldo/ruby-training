# block || <<MLS

name = "Juan Manuel Giraldo"
name[3] = "Hola"
puts name[3..]


name.length.times do |i|
  print name[name.length() -1 - i]
end
