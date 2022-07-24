class Animal
  def speak
    "#{self.class}: Hello!"
  end
end

# We define inheritance using the '<' symbol
class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  # Stablish own 'speak' method
  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new("Sparky")
paws = Cat.new

puts sparky.speak           # => Sparky says arf!
puts paws.speak             # => Hello!