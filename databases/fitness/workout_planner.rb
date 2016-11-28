require 'sqlite3'

$workouts = SQLite3::Database.new("workouts.db")
$workouts.results_as_hash = true


def calender
	create_table_cmd = <<-SQL
		CREATE TABLE IF NOT EXISTS calender(
		id INTEGER PRIMARY KEY,
		workout VARCHAR (255),
		date VARCHAR (255)
		)
	SQL
	$workouts.execute(create_table_cmd)
end

def workout_done(workout_name,date)
	$workouts.execute("INSERT INTO calender (workout ,date) 
			VALUES (?,?)", [workout_name, date])

end

def create_workout(name)
	create_table_cmd = <<-SQL
		CREATE TABLE IF NOT EXISTS '#{name}'(
		id INTEGER PRIMARY KEY,
		exercize_name VARCHAR (255),
		sets INT,
		reps_per_set INT,
		weight_in_kg REAL

		)
	SQL
	$workouts.execute(create_table_cmd)

end

def add_exercize(workout,exercize_name, sets, reps_per_set, weight_in_kg)
		
		$workouts.execute("INSERT INTO #{workout} (exercize_name,sets,reps_per_set,weight_in_kg) 
			VALUES (?,?,?,?)", [exercize_name, sets, reps_per_set, weight_in_kg])
end


calender
puts "Welcome to the workoutplanner 9000!"
puts "Have you done a workout today?(y/n)"
input = gets.chomp.downcase


if input == "y"
	puts "What is the date today?(day,month,year)"
	date = gets.chomp.to_str
	puts "Would you like more information on a specific workout?(y/n)"
	input = gets.chomp.downcase
	if input == "y"
		puts "What workout would you like to look at?"
		workout_information = gets.chomp.downcase
		 chest_array = $workouts.execute("SELECT * FROM '#{workout_information}'")
		puts "The chest workout has #{chest_array.length} exercizes, which consist of :"
		chest_array.each do |hash|
			puts "#{hash["exercize_name"]} with #{hash["sets"]} sets of #{hash["reps_per_set"]} reps and #{hash["weight_in_kg"]} kg!"
		end
	end
	puts "Have you done a new workout?(y/n)"
	input = gets.chomp.downcase
	if input == "y"
		puts "What is your workout called?"
		workout_name = gets.chomp.downcase
		create_workout(workout_name)
			puts "How many exercizes did you do?"
			amount_of_exercizes = gets.chomp.to_i
				amount_of_exercizes.times do 
					puts "What exercize did you do in your workout?"
						exercize_name = gets.chomp.downcase
					puts "How many sets did you do?"
						sets = gets.chomp.to_i
					puts "How many reps per set did you do?"
						reps_per_set = gets.chomp.to_i
					puts "How much weight in kg did you use?"
						weight = gets.chomp.to_i

					add_exercize(workout_name,exercize_name,sets,reps_per_set,weight)
				end
				workout_done(workout_name,date)
	else
		puts "What workout did you complete today?"
			workout_name = gets.chomp.downcase
			workout_done(workout_name,date)
	end
	puts "Here are all of your completed workouts:"
		display_array =  $workouts.execute("SELECT * FROM calender")
		display_array.each do |hash|
			puts "You did #{hash["workout"]} on #{hash["date"]}"

	end

else 
	puts "Here are all of your completed workouts:"
		display_array =  $workouts.execute("SELECT * FROM calender")
		display_array.each do |hash|
			puts "You did #{hash["workout"]} on #{hash["date"]}"
	end
end

puts "Would you like more information on a specific workout?(y/n)"
	input = gets.chomp.downcase
	if input == "y"
		puts "What workout would you like to look at?"
		workout_information = gets.chomp.downcase
		 chest_array = $workouts.execute("SELECT * FROM '#{workout_information}'")
		puts "The chest workout has #{chest_array.length} exercizes, which consist of :"
		chest_array.each do |hash|
			puts "#{hash["exercize_name"]} with #{hash["sets"]} sets of #{hash["reps_per_set"]} reps and #{hash["weight_in_kg"]} kg!"
		end
	end