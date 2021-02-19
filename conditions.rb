number = 50

#unless condition
unless number == 60
  puts "number different to 60"
end

#statement modifier
puts "50 is greater than 40." if number > 40

#conditional assigment
y = nil || "Not found"
p y

#until loop

until number > 60
  number += 1
end

p number
