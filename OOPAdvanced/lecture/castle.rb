require_relative "./building.rb"
require_relative "./butler.rb"

class Castle < Building
  attr_accessor :moat
  attr_reader :butler

  def initialize(name, width, length, ruler)
    super(name, width, length)
    @ruler = ruler
    @butler = Butler.new(self) #the instance of the castle the butler is created for
  end

  def has_a_moat?
    @moat == true
  end

  def floor_area
    super + 300
  end

  def self.categories
    ["Norman", "Medival", "French"]
  end


end


magnificent_castle = Castle.new("Magnificent Castle", 500, 500, "Aladin")


# p magnificent_castle.width
# p magnificent_castle.length
# p magnificent_castle.name
# puts "The castles new floor area is:"
# p magnificent_castle.floor_area

# puts "the castles butler is:"
p magnificent_castle.butler.clean_castle

# p magnificent_castle.has_a_moat?
# magnificent_castle.moat = true
# p magnificent_castle.has_a_moat?

# p Castle.categories.join(",")