musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

###### array recap #####

#CRUD

#create
musicians << "Nil Nas X"
# p musicians

#read
musicians[1]

#update
musicians[4] = "Bob Marley"
# p musicians

#delete
# musicians.delete("Bob Marley")
musicians.delete_at(-1)
# musicians.pop()


####### range #####

range = 1..10
range
# p range.to_a

for i in range 
  i
end

for i in 0...(musicians.size)
  musicians[i]
end

for musician in musicians
  musician
end


##### FOR IS NOT IDIOMATIC #####

##### each #######

musicians.each do |musician|
  "Hello #{musician}"
end

#### each_with_index ####

musicians.each_with_index do |musician, index|
  "#{index + 1} - #{musician}"
end

##### map #####

upcased_musicians = musicians.map do |musician| # map creates a new array of altered versions of the original elements
  musician.upcase
end

first_names = musicians.map do |musician|
  musician.split.first
end

#### ==  ####

first_names_short = musicians.map {|musician| musician.split.first}

first_names


##### count #####
r_musician_count = musicians.count do |musician|
  musician.capitalize.start_with?("R") 
end

r_musician_count


##### select ######

r_musician = musicians.select do |musician| #select pushes original elements in a new array if they fulfill a condition
  musician.downcase.start_with?("r") #condition
end



r_musician
musicians

