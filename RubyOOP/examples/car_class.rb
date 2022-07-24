class MyCar
  # * getter & setter
  attr_accessor :color, :model , :current_speed, :is_on

  # * getter
  attr_reader :year

  # * setter
  # attr_writer :instance_variable   # self keyword to call a setter

  # Constructor function
  def initialize(color, model, year)
    # *- Instance Variables -*
    @color = color
    @current_speed = 0
    @is_on = false
    @model = model
    @year = year
  end

  # *- Instance methods -*
  def speed_up
    if is_on
      self.current_speed += 10
    else
      p "You first have to turn on the car"
    end
  end

  def break
    if is_on
      self.current_speed -= 5
    else
      p "You first have to turn on the car"
    end
  end

  def toggle_car_engine
    if is_on
      self.is_on = false
      self.current_speed = 0
      p "The car is off"
    else
      self.is_on = true
      p "The car is on"
    end
  end

  def information
    "Model: #{model}, Color: #{color}, Year: #{year}"
  end

  def change_color(newColor)
    self.color = newColor
    p "The car's color is #{color}"
  end

end

ford = MyCar.new(1992, "Dark Blue", "Maverick")

class ClassName
  # * getter & setter
  # attr_accessor :instance_variable

  # * getter
  # attr_reader :instance_variable

  # * setter
  # attr_writer :instance_variable   # self keyword to call a setter

  # Constructor function
  def initialize(param)
    # *- Instance Variables -*
    @instancle_variable_name = param
  end

  # *- Instance methods -*

end