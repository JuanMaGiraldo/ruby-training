module LengthConversions

  URL = "www.conversions.com"

  def self.miles_to_feet(miles)
     miles * 5280
  end

end


puts LengthConversions::URL
puts LengthConversions.miles_to_feet(100)


module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(length,width)
    length * width
  end
end

module Circle
  PI =  3.14159
  def self.area(radius)
    PI * radius * radius
  end
end


class OlympicMedal

  include Comparable
  attr_reader :type
  MEDAL_VALUES = {"Gold" => 3, "Silver" => 2, "Bronze" => 1}

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=> (other)
    if MEDAL_VALUES[type] <   MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
end

bronze = OlympicMedal.new("Bronze",5)
silver = OlympicMedal.new("Silver", 10)

puts bronze <= silver

#A mixin is a module that injects addiotional beahavior into a class.
#Mixins allows us to mimic inheritance from more than one class
#A class that includes a module has access to its methods and constants
#Constants and methods mixed into a class do not need to be prefixed with the module name
