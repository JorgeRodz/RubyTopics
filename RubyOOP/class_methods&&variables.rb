class GoodDog
  # *- Class properties/variables -*
  # Class variables are declared with @@ just before the name
  # In order to obtain this variables we have to return it with a method
  @@number_of_dogs = 0

  # *- getters & setters -*
  # * getter & setter
  attr_accessor :name, :height, :weight # getter and setter for name, height and weight instance variable
  # * getter
  attr_reader :bread # getter for bread instance variable
  # * setter
  attr_writer :age # setter for age instance variable

  # Constructor function
  def initialize(name, height, weight, bread, age)
    # *- Instance Variables -*
    @age = age
    @bread = bread
    @height = height
    @name = name
    @weight = weight
    @@number_of_dogs += 1
  end

  # *- Instance methods -*
  def speak
    # "#{@name} says: Arf!"  # Here we are calling the instance variable
    "#{name} says: Arf!" # Here we are calling the getter which also works as intended
  end

  def speak_age
    "#{@name} says: I'm #{@age} years old"
  end

  def change_info(n, h, w)
    # note: setters will always be call it using the 'self' keyword, otherwise we will be creating just new local variables
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} is #{height}cm tall and #{weight} pounds"
  end

  # *- Class methods -*
  # A class method will always be prepend by the keyword "self" -> self.method_name
  def self.what_am_i
    "I'm a GoodDog class!"
  end
  def self.dogs_instances
    @@number_of_dogs # Returning the class variable
  end

end

tobi = GoodDog.new(2, 'Pitbull', 40, 'Tobias', 25)
benito = GoodDog.new(1, 'Labrador', 50, 'Benito', 20)

puts GoodDog.dogs_instances
