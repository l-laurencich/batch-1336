require 'date'

age = 33
height = 180

details = "age = #{age}, height = #{height}"

puts "you are #{age} years old"

puts "one year passes..."

age = age + 1

puts "you are #{age} years old"


puts "Hi John."
puts "Hello Paul!"
puts "Hello Ringo!"
puts "-------------"

def greet(name)
  return "Buongiorno #{name.capitalize}."
end

puts greet("deyvison")
puts greet("leo")


def full_name(first_name, last_name)
  name = first_name.capitalize + " " + last_name.capitalize
  return name
end

puts full_name("bOriS", "knEZEvic")
puts full_name("bruNO", "brunckhORST")


def max(x,y)
  if x > y
    return x
  elsif x == y 
    return "they are the same"
  else
    return y
  end
end

first_number = 6
second_number = 1964

first_number = first_number + 2000

bigger_num = max(first_number, second_number)
puts bigger_num


def tomorrow
  tommorows_date = Date.today + 1
  return tommorows_date.strftime("%B %d")
end

puts tomorrow


def add(x,y)
  return x + y
end

# is the same as 

def add(x,y)
  x + y
end