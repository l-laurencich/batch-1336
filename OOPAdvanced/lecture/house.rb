require_relative "./building.rb"

class House < Building

  def self.price_per_square_meter(city)
    case city
    when "Munich" then 9000
    when "Paris" then 5000
    else "Sorry no Data available"
    end
  end

  def total_price(city)
    floor_area * House.price_per_square_meter(city)
  end

end





white_house = House.new("White House", 50, 50)

# p House.price_per_square_meter("Munich")
# p House.price_per_square_meter("Paris")
# p House.price_per_square_meter("Berlin")

p white_house
puts "The total price is:"
p white_house.total_price("Munich")
p white_house.width
p white_house.length
p white_house.name
p white_house.floor_area

# p white_house.has_a_moat?