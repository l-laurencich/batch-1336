class Building
  attr_reader :name, :length, :width
  def initialize(name, width, length)
    @name = name
    @width  = width
    @length = length
  end

  def floor_area
    @width * @length
  end


end