class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details = {})
    defaults = {age: 35, occupation: "Candidate"}
    defaults.merge!(details)

    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end


info =  {age: 53, hobby: "Fishing", birthplace: "Kentuchy"}
senator = Candidate.new("Mr. Smith", info)
p senator
