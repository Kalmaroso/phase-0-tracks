puts "What is the hamsters name?"
name = gets.chomp

puts "How loud is the hamster in a scale from 1 to 10"
volume = gets.chomp

volume = volume.to_i

puts "What color is the hamsters fur?"
color = gets.chomp

puts "Is the hamster good for adoption in your opionion? (y/n)"

input = gets.chomp
	if input =="y"
		good_for_adoption = true
	else 
		good_for_adoption = false
	end
puts "How old do you estimate is the hamster"

age = gets.chomp

age = age.to_i

puts "The hamsters fur color is #{color}"
puts "The hamsters name is #{name}"
puts "The hamster is #{age} years old"
puts "The statement: The hamster is good for adoption is #{good_for_adoption}"
puts "The hamster is a #{volume} in a volume scale from 1 to 10"