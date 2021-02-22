a = [1,2,3,3,5,4,4,5,6]
b = a.dup

#Dup creates a copy of the object

b.push(4)

p a
p b


def sum(*numbers)
  sum = 0
  numbers.each{ |num| sum += num}
  sum
end

sum(1,3,4,5)


p a.any? do |number|
  number.even?
end

p a.all? { |n| n.class == Integer}

#find and detect returns the first value that
#satisfies the condition, on the other side, select returns all the values that satisfies the condition.

p a.find { |n| n > 1}
p a.select { |n| n > 1}

#uniq creates a new object but without repeted values
p a.uniq!

#compact removes all the nil values

result = a.reduce(0) do |previous, current|
  previous + current
end

p result

#the flatten operation converts a multidimensional array to one-dimensional

names = [
  ["Juan"],
  ["Manuel", ["Giraldo"]]
]

p names
p names.flatten


#zip associates the elements of an array given its index
p [1,2,3].zip(["A","B","C"])

#sample returns a random element or n random elements from the array.
p a.sample
# sample is like =>
p a.shuffle[0]

def custom_multiply(array, number)
  result = []
  number.times {result << array}
  result.flatten
end

p custom_multiply([1,2,3],3)

#visual shortcut | = .|()
#union, combine arratys
p a | [3,4,5,6]
p a.dup.concat([3,4,5,6]).uniq

p a


def custom_subtraction(array1, array2)
  array1.filter { |elem| !array2.include?(elem)}
end

p custom_subtraction([1,2,3,5,6,7],[2,3,4])

# | union  - difference & interception
