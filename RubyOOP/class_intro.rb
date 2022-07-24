=begin
* In this file we saw:
  * - How to declare a Class.

  * - Constructor function (Instance Variables)
  * - Instance methods

  * - getters and setters for instances variables
    * - attr_accessor :propertie  -> getter & setter for that propertie
    * - attr_reader :propertie  -> getter for that propertie
    * - attr_writer :propertie  -> setter for that propertie

  *- 'self' keyword in order use the getter property inside the class
=end

# Class always starts withe a capital letter
class GoodDog
  # Constructor function
  def initialize(name)
    # *- Instance Variables -*
    @name = name
  end

  # *- Instance methods -*
  def speak
    "#{@name} says: Arf!"
  end

  # *- getters & setters -*
  # def get_name    # deprecated way
  #   @name
  # end
  # * getter       # new way
  # note: we need a getter in order to obtain the instance variable value, other way we can not access to the value.
  # sparky.name -> this will throw an error if we do not declare the getter
  # sparky.name -> this will work is with the getter name declare

  def name
    @name
  end

  # def set_name=(name)   # deprecated way
    # @name = name
  # end
  # * settter    # new way
  # note: Setter methods always return the value that is passed in as an argument, regardless of what happens inside the method. If the setter tries to return something other than the argument's value, it just ignores that attempt.
  def name=(newName)
    @name = newName
    "This line is ignored because setter method always return the value is passed as parameter"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak

# / /*----- attr_accessor, attr_reader, attr_writer and 'self' keyword -----*/
# note: with the 'attr_accessor' keyword we declara the 'getter' and 'setter' at the beginning without to declare the function in our class, this is for save space on our class and a more practical way to declare getters and setters

class GoodDog
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
    @name = name
    @height = height
    @weight = weight
    @bread = bread
    @age = age
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

end