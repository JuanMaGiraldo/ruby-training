class Array
  def sum
    self.reduce(0) { |acc,elem| acc+ elem}
  end

end

class String

  def alphabet_sum
    alphabet = ("a".."z").to_a
    sum = 0

    self.downcase.each_char do |character|
      if alphabet.include?(character)
        numeric_value = alphabet.index(character) + 1
        sum += numeric_value
      end
    end
    sum
  end

end

class Hash

  def ideintify_duplicate_values
    values = []
    dupes = []

    self.each_value do |value|
      values.include?(value) ? dupes << value : values << value
    end

    dupes.uniq
  end
end

class Integer

  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self.minutes * 60
  end

  def days
    self.hours * 24
  end

  def custom_times
    i = 0
    while i < self
      yield(i+1)
      i += 1
    end
  end

end

puts Time.now + 60
puts Time.now + 60.days

#p [1,2,3].sum
#p "hola".alphabet_sum

scores = {a: 100, b: 100, c:83, d:50, e: 13, f:83}
p scores.ideintify_duplicate_values
