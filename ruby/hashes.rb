puts "Enter your name:"
name = gets.chomp
name = name.to_i

puts "Enter your age:"
age = gets.chomp
age = age.to_i

puts "Enter the number of children you have:"
number_of_children = gets.chomp
number_of_children = number_of_children.to_i

puts "What would you like to have as a decor theme?"
decor_theme = gets.chomp

puts "Do you like modern design? (y/n)?"
modern_design = gets.chomp
if 	modern_design.downcase.gsub(/\s+/, " ") == "y" || modern_design.downcase.gsub(/\s+/, " ") == "yes"
	modern_design = true

else 
	modern_design = false

end

puts "Would like a smart home installed(y/n)?"

smart_home = gets.chomp
if 	smart_home.downcase.gsub(/\s+/, " ") == "y" || smart_home.downcase.gsub(/\s+/, " ") == "yes"
	smart_home = true

else 
	smart_home = false

end

puts "What is you favourite color?"

favourite_color = gets.chomp		

user_information = {
name: name,
age: age,
number_of_children: number_of_children,
decor_theme: decor_theme,
modern_design: modern_design,
smart_home: smart_home,
favourite_color: favourite_color

}

p user_information


change = " "

until change.downcase.gsub(/\s+/, " ") == "yes" || change.downcase.gsub(/\s+/, " ") == "y"  || change.downcase.gsub(/\s+/, " ") == "no" || change.downcase.gsub(/\s+/, " ") == "n" 

	puts "Would you like to change one of your decisions?(y/n)"
	change = gets.chomp

	if change.downcase == "yes" || change.downcase == "y"
		change_category = " "
		
   		until change_category.downcase.gsub(/\s+/, " ") == "name" || change_category.downcase.gsub(/\s+/, " ") == "age"  || change_category.downcase.gsub(/\s+/, " ") == "decor theme" || 
   			change_category.downcase.gsub(/\s+/, " ") == "number of children" || change_category.downcase.gsub(/\s+/, " ") == "modern design"  || change_category.downcase.gsub(/\s+/, " ") == "smart home" || change_category.downcase.gsub(/\s+/, " ") == "favourite color" 
		
			puts "Which category would you like to change?"
			puts "Your Options are:
			name
			age
			number of children
			decor theme
			modern design
			smart home
			favourite color
			"
			change_category = gets.chomp

			if change_category.downcase.gsub(/\s+/, " ") == "name"
				puts "Enter your name:"
				name = gets.chomp
				name = name.to_i


			elsif change_category.downcase.gsub(/\s+/, " ") == "age"

				puts "Enter your age:"
				age = gets.chomp
				age = age.to_i

			elsif change_category.downcase.gsub(/\s+/, " ") == "decor theme"
				puts "What would you like to have as a decor theme?"
				decor_theme = gets.chomp
				

			elsif change_category.downcase.gsub(/\s+/, " ") == "number of children"
				puts "Enter the number of children you have:"
				number_of_children = gets.chomp
				number_of_children = number_of_children.to_i

			elsif change_category.downcase.gsub(/\s+/, " ") == "modern design"
				puts "Do you like modern design? (y/n)?"
				modern_design = gets.chomp
				if 	modern_design.downcase.gsub(/\s+/, " ") == "y" || modern_design.downcase.gsub(/\s+/, " ") == "yes"
				modern_design = true

				else 
				modern_design = false

				end

			elsif change_category.downcase.gsub(/\s+/, " ") == "smart home"
				smart_home = gets.chomp
				if 	smart_home.downcase.gsub(/\s+/, " ") == "y" || smart_home.downcase.gsub(/\s+/, " ") == "yes"
				smart_home = true

				else 
				smart_home = false

				end

			elsif change_category.downcase.gsub(/\s+/, " ") == "favourite color"
				puts "What is you favourite color?"

				favourite_color = gets.chomp		

			else 
			puts "Could not compute your answer, please retype you answer and focus on you spelling :)"

			end
		end	







	elsif change.downcase == "n" || change.downcase == "no"
		puts "Ok"

	else 
		puts "User input can not be computed. Please give us your answer again and make sure it is either yes or no"
	end
end

user_information = {
name: name,
age: age,
number_of_children: number_of_children,
decor_theme: decor_theme,
modern_design: modern_design,
smart_home: smart_home,
favourite_color: favourite_color

}

p user_information

puts "Thanks for using our program. Have a nice day!"