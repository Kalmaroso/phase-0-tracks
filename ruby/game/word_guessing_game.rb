class Guessing_game
	attr_reader :lives
	attr_reader :display_array
	def initialize
		@name = ""
		@array_of_guesses = []
		@user_input_letters = []
		puts "Starting new game!"
	end
	
	def array_of_guesses(letter)
		@array_of_guesses.push(letter)
	end
		

	def name(answer)
		@name = answer.downcase
		@name_array = answer.split('')
		@length = @name.length
		@lives = @length
	end

	def empty_string
		@empty_array = []
		counter = 0
		until counter == @length
			@empty_array.push("_ ")
			counter += 1
		end
		empty_string = @empty_array.join
		p empty_string
	end

	def user_input_array(user_input_letter)
		@user_input_letters.push(user_input_letter)
	end
	
	def revealed

			@true_or_false_array = []
			@name_array.each do |letter|
			 	 		if @user_input_letters.include?(letter) == true
					  	 	result = true
			 			else 
			 				result = false
			 			end
			@true_or_false_array.push(result)
			end
			 
	end				
		
	
	def display_results
			counter = 0
			@display_array = []
			@true_or_false_array.each do |revealed_or_not|
				if revealed_or_not == true
					object_of_display = @name_array[counter]
				else 	
					object_of_display = "_ "					
				end
				counter += 1
				@display_array.push(object_of_display)
			end
			p @display_array.join
			
	end
	def lives_left
		@lives = @name_array.length
		@user_input_letters.uniq.each do |letter|
			if @name_array.include?(letter) == false
				@lives -= 1
			end

		end
		@lives
	end
end

game_1 = Guessing_game.new


puts "For user inputting string:"
puts "What is your desired word?"

input = gets.chomp
game_1.name(input)

game_1.empty_string


until game_1.lives_left == 0
	puts "Guess a letter, or guess the final word!"
	user_guess = gets.chomp
		if user_guess == input
			puts "Wow, you win!"
			break
		end

	game_1.user_input_array(user_guess)
	game_1.revealed

	game_1.display_results
	 game_1.lives_left
	lives = game_1.lives_left 
		if lives == 0
			puts "You looooose"
			break
		end
	puts "You have #{lives} lives left"

end
	
