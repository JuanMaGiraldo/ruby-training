=begin
- a block is a collection of code to be executed.
- blocks must be attached to a method call.
- blocks alter the executionm of the method
- a block is not an argument / parameter to the method
- block can be defined with {} or do end.
- a block can get or update the value of local variables within the block.
=end

=begin

- a block IS NOT a object
- Procs can be reused
=end

cubes = Proc.new { |number| number ** 3 }
a = [1,2,3,4,5]
p a.map(&cubes)

def pass_control(name)
  puts "This is inside the method"
  if block_given?
    yield name
  else
    puts "The block was not provided."
  end
end


pass_control("Juan") { |name| puts "Hello #{name}!!"}

#A proc can be called by itself

hi = Proc.new {puts "Hi there"}
hi.call

def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

names = %w["Juan Manuel"]
custom_each(names) { |name| print name }

puts

say_something = -> {puts "This is a lambda"}
#also:
#say_something = lambda {puts "This is a lambda"}
say_something.call

=begin
There are different ways to call lambda
my_lambda.call
my_lambda.()
my_lambda[]
my_lambda.===
=end


def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc (not showed)"
end
