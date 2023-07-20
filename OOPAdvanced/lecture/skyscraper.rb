require_relative "./building.rb"

class Skyscraper < Building
  def initialize(name, width, length, height)
    super(name, width, length)
    @height = height
  end

  def capitalized_name
    @name.capitalize
  end

  def type_of_owner
    if @height > 50
      "this #{capitalized_name} is a skyscraper for Spider Man" #self is not mandatory
    else
      "this #{self.capitalized_name} is a skyscraper for Beginners"
    end
  end

end


empire_state = Skyscraper.new("Empire State", 30, 100, 441)


p empire_state.type_of_owner

# p empire_state
# p empire_state.width
# p empire_state.length
# p empire_state.name
# p empire_state.floor_area