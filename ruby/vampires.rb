puts "How many employees have to be processed?"
amount_employees = gets.chomp

amount_employees = amount_employees.to_i

counter = 0 

while counter < amount_employees
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp
age = age.to_i

puts "Our company cafeteria serves garlic bread. 
Should we order some for you? (y/n)"
garlic = gets.chomp
	if garlic == "y"
		garlic_bread = true
	else 
		garlic_bread = false

	end

puts "Would you like to enroll in the companys health insurance?(y/n)"
health = gets.chomp

		if health == "y"

			health_insurance = true

		else 
			health_insurance = false
		end





	
		puts "In addition, list all of your allergies and write *done* once you have finished"

			allergies = "string"
			
			while  allergies != "sunshine" && allergies != "done"
				
						
					
					puts ": "
					allergies = gets.chomp


						if allergies == "sunshine" 
						puts "Probably a vampire"

						elsif allergies == "done"


									if  ((garlic_bread == true || health_insurance == true ) && age < 100 )
										puts "Probably not a vampire"

									elsif ( (garlic_bread == false || health_insurance == false ) && age > 100 )
										puts "Probably a vampire"

									elsif (garlic_bread == false &&  health_insurance == false && age   > 100)
										puts "Almost certainly a vampire"

									elsif (name == "Drake Cula" || name == "Tu Fang")
										
									puts "Definetly a vampire"

									else
										puts "results inconclusive"
									end	
			




				
			
				
				end
				
				
				

			end
			
					
			

	counter = counter + 1	
end

puts "Actually, never  mind! What do these questions have to do with anything Lets all be friends."