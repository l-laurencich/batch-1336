require "date"

def days_until_xmas(date)
  date_xmas = Date.new(date.year, 12, 25)
  if date > date_xmas
    date_xmas = date_xmas.next_year 
  end
  days = date_xmas - date
  days.to_i
end

puts days_until_xmas(Date.new(2023, 7, 11))
puts days_until_xmas(Date.new(2023, 12, 24))
puts days_until_xmas(Date.new(2023, 12, 31))