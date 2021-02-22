numbers = [4,2,4,5,2,1,45]

numbers.each {|elem| print elem.to_s + " "}
puts

for  num in numbers
  print "#{num} "
end

puts
#The for loop perserve the  values
puts num

numbers.each_with_index do |number, index|
  puts "The number in index: #{index} is: #{number}"
end

#challenges

array = (1..10).to_a

sum = 0
array.each_with_index {|num,index| sum += num * index}
puts "The sum is: #{sum}"

#map is == to collect
numbers.each do |num|
  if num == 4
    next
  end
  puts "The number is: #{num}"
end

# sort, reverse, min, max, concat, include?, index == find_index


#select == filter in js
evens = array.select {|number| number.even?}
print "evens: #{evens}"
#reject is a select but negative
puts
#unpack Array
users =[["Juan",20],["Pedro",21]]

juan, pedro = users
p juan
p pedro

#partition == select and revert // select is [0] and revert [1]
