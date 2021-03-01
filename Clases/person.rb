class Person

  attr_accessor :name
  #also attr_reader (get) attr_writter (set)
  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "My name is #{@name}, I have #{@age}"
  end
=begin
  def name
    @name
  end

  def name= (name)
    @name = name
  end
=end
end

person = Person.new("Juan Manuel",20)
puts person


#A module is a toolbox or container of methods and constants
#Modules create namespaces for methods with the same name.
#modules cannot be used to create instances.
#Modules can be mixed into classes to add behavior
#The :: symbol is called the SCOPE RESOLUTION OPERATOR
