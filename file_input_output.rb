
File.open("myFirstFile.txt","w") do |file|
  file.puts "I'm creating this from Ruby!"
  file.write "No line break here "
  file.puts "Pretty cool!"
end

File.open("myFirstFile.txt").each do |line|
  puts line
end

File.rename("myFirstFile.txt","somethingBetter.txt")

if File.exist?("somethingBetter.txt")
  File.delete("somethingBetter.txt")
end


load("hello.rb")

hello()

# or -> require_relative "strings"


=begin
ARGV.each do |argument|
  number = argument.to_i
  puts number
end
=end
