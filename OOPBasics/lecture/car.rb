class Car
  attr_reader :color, :brand 
  attr_writer :color 
  attr_accessor :color #reader and writer combined

  def initialize(color, brand)
    @engine_started = false #@engine_started is an instance variable
    @color = color
    @brand = brand
  end 

  # def color #explicit getter method
  #   @color
  # end

  # def new_color=(new_color) #explicit setter method
  #   @color = new_color
  # end

  # def brand #explicit getter method
  #   @brand
  # end

  def engine_started?
    @engine_started
  end

  def start_engine
    spark_plugs_ignite
    fuel_pump_pumps
    @engine_started = true
  end

  private

  def spark_plugs_ignite
    puts "zizzzz, igniting!!"
  end

  def fuel_pump_pumps
    puts "blub blub blub, pumping fuel mate"
  end


end