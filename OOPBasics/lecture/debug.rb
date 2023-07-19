# require "pry-byebug"

def full_name(first_name, last_name)
  first_name.capitalize!
  # binding.pry
  last_name = last_name.capitalize
  # binding.pry
  "#{first_name} #{last_name}"
end


puts full_name("bOris", "knEzevic")