#only false and nil are falsy

def isTruthiness? var
  p var
  if var
      puts "Truthiness"
  else
    puts "Falsiness"
  end
end

isTruthiness?("hi")
isTruthiness?(0)
isTruthiness?("")
isTruthiness?([])
isTruthiness?(nil)

a, b = 7,5

case [a,b]
when [[4,7],5]
    puts "works"
end
