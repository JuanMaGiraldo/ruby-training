class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end

end

class Manager < Employee
  attr_reader :employees

  def initialize(name, age, employees)
    super(name,age)
    @employees = employees
  end

  def introduce
    super() + " I'm a Manager."
  end

end

class Worker < Employee

end


juan = Manager.new("Juan Ma",20,[])
p juan.introduce

def juan.introduce
  "I'm a singleton method"
end

p juan.introduce

p juan.singleton_methods
p juan.singleton_class
