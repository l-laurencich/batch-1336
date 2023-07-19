def timer
  start_time = Time.now

  yield
  
  end_time = Time.now
  elapsed_time = end_time - start_time

  puts "Elapsed Time: #{elapsed_time} seconds"
end


timer do 
  puts "this should be fast"
  sleep(1)
  puts "I am done :)"
end

puts "***************************"

timer do 
  puts "this might take a while"
  sleep(4)
  puts"uff that was tough"
end



######### greet #################

def greet(first_name, last_name)
  greeting = "Hello #{first_name.capitalize} #{last_name.upcase}"
  if block_given?
    new_greeting = yield(greeting)
  else
    new_greeting = greeting
  end
  new_greeting
end


compliment = greet("elVis", "dÖttinger") do |greeting|
  "#{greeting}, I really like your shirt mate"
end

aussie = greet("eLvis", "döttingER") do |aussie|
  "#{aussie}, pretty gnarly surf out innit"
end


puts compliment
puts aussie
