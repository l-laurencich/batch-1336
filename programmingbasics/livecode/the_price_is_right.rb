puts "------------------------------"
puts "welcome to the price is right"
puts "------------------------------"

min = 1
max = 1000000000
price = rand(min..max)
guess = 0
counter = 0

while price != guess
  puts "Guess a number!"
  guess = (min+max)/2
  counter += 1
  if guess > price
    puts "You are too high!!"
    max = guess
  elsif guess < price
    puts "You are too low"
    min = guess
  end
end

puts "your guess is right, it took you #{counter} guesses!"