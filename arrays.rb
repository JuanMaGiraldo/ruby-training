p [].class

numbers = [4,2,4,5,2,1,45]

puts numbers

#shorthand %w syntax to create an array of strings
names = %w[Juan Manuel Giraldo Rios]
p names

#creating square matrix
SIZE = 10
p Array.new(SIZE, Array.new(SIZE,nil))

#fetch: works like [], but, if the index doesn't exist, you can specify the return value.
p numbers.fetch(100,0)
#you can extract sequential array elements with bracket syntax
p numbers[0,3]
p numbers[0...3]
p numbers[0,1].class
p numbers.values_at(0,-1,4)
#slice is the same as [index, range]
p numbers.slice(0,3)
#count, works the same as size and length, but, you can count the name of occurrences present in the array
p numbers.count(4)
#empty? vs nil?
p [].empty? === ([].size == 0)
#nil? != empty?
p numbers[100].nil?
# first  and last
p numbers.first(3)
p numbers.last(1) #Array
p numbers.last #Integer

def custom_first(arr, num = 0)
  return arr[0] if num == 0
  return arr[0,num]
end

def custom_last(arr, num = 0)
  return arr[-1] if num == 0
  return arr[-num..-1]
end

p custom_first(numbers,5)

# Shovel operator => <<

numbers.push(100)
numbers << 300 << 40 << 43 << 10

index = 3
numbers.insert(index, 432,32)

p numbers
#remove last item
p numbers.pop
p numbers

two_items = numbers.pop(2)
p two_items

#shift -> remove firts element || unshift -> adds to the start of the array

a = [1,2,3]
b = [1,2]
c = [1,2,3]

p a == c
p c != b

a = ["a","b"]
b = ["a","b"]

p a == b

#spaceship operator
# a > b -> 1
# a < b -> -1
# a == b -> 0
# a is not the same type that b -> nil
p 5 <=> nil
p [3,2] <=> [1,2]

#.is_a?
p 5.is_a?(Integer)
p numbers.is_a?(Array)
