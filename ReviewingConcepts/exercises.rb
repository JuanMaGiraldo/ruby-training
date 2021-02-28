=begin
Your task is to make a function that can take any non-negative integer as an argument and return it
with its digits in descending order.
Essentially, rearrange the digits to create the highest possible number.

123456789 => 987654321
=end

def descending_order(n)
  #n.to_s.split("").map(&:to_i).sort.reverse.join("").to_i
  n.digits.sort.reverse.join.to_i
end

p descending_order(123456789) == 987654321

=begin
Return the number (count) of vowels in the given string.
We will consider a, e, i, o, u as vowels for this Kata (but not y).
The input string will only consist of lower case letters and/or spaces.

"o a kak ushakov lil vo kashu kakao" => 13
=end

def get_count(input_str)
  puts input_str.scan(/[aeiou]/).count
end

get_count("o a kak ushakov lil vo kashu kakao")

=begin
could be very large) containing integers. The array is
either entirely comprised of odd integers or entirely
comprised of even integers except for a single integer N.
Write a method that takes the array as an argument and
returns this "outlier" N.
=end

def find_outlier(integers)
  evens = []
  odds = []
  integers.each do |number|
    evens.push(number) if number.even?
    odds.push(number) if number.odd?
  end

  return evens[0] if evens.length == 1
  return odds[0]
end
# one line solution

def find_outlier(integers)
  integers.count(&:even?) > 1 ? integers.find(&:odd?) : integers.find(&:even?)
end

p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])


=begin
Take 2 strings s1 and s2 including only letters from ato
 z. Return a new sorted string, the longest possible,
 containing distinct letters - each taken only once -
 coming from s1 or s2.
 a = "xyaabbbccccdefww"
 b = "xxxxyyyyabklmopq"
 longest(a, b) -> "abcdefklmopqwxy"
=end

def longest(a1, a2)
  (a1+a2).chars.uniq.sort.join
end

a = "xyaabbbccccdefww"
b = "xxxxyyyyabklmopq"
p longest(a, b) == "abcdefklmopqwxy"


=begin
Write a function that takes a string of braces, and
determines if the order of the braces is valid.
It should return true if the string is valid, and false
if it's invalid.

All input strings will be nonempty, and will only
consist of parentheses, brackets and curly braces: ()[]{}.
"(){}[]"   =>  True
"([{}])"   =>  True
"(}"       =>  False
"[(])"     =>  False
"[({})](]" =>  False
=end

def validBraces(braces)
  dict = {"{":"}", "(":")", "[":"]" }
  open = "{[("
  stack = []
  braces.chars.each do |char|
    if (open.include?(char))
      stack.push(dict[char.to_sym])
    else
      return false if(char != stack.pop)
    end
  end
  stack.empty?
end

p validBraces("([{}])") == true
p validBraces("[({})](]") == false

lambda = lambda do
  puts "hello!"
end

proc = Proc.new { |x| puts x }

def hello(proc1,proc2,lambda,&block)
  lambda.call
  proc1.call("hi proc1")
  proc2.call("hi proc2")
  block.call
  yield

end

hello(proc,proc,lambda){puts "este es el bloque"}


class Exercise
  @@count = 0
  attr_reader :value

  def initialize
    @value = "Hello"
    @@count += 1
  end

  def value= (par)
    @value = par
  end

  def self.count
    @@count
  end
end

e = Exercise.new
e.value = "Hi"
p e.value
p Exercise.count
