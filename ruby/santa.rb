class Santa

	attr_reader :ethnicity, :age
	attr_accessor :gender

# => attr_writer, possible but rarely used

	def initialize(gender, ethnicity)
		#puts "Initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", 
			"Cupid", "Donner", "Blitzen"]
		@age = rand(140)
		#puts "{@gender}, #{@etchnicity}, #{@reindeer_ranking}, #{@age}"
	end

	def speak
		puts "Ho, ho, ho! Haaaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def celebrate_birthday
		@age += 1

		
	end

	def get_mad_at(reindeer_mad_at)
			@reindeer_ranking.each do |reindeer|
				if 	reindeer == reindeer_mad_at
					@reindeer_ranking.insert(@reindeer_ranking.length, reindeer_mad_at) 
					@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer))
				end
			end
			puts "updated list: #{@reindeer_ranking}"

	end

	#setter methods :

	#def gender=(gender)
	#	@gender = gender
	#	p gender
	#end
	
	#getter methods : 
	#def age
	#	@age
	#end
	#
	#def ethnicity
	#	@ethnicity
	#end
end

#female_santa = Santa.new("woman", "asian")

#original_santa = Santa.new("male", "caucasian")

#female_santa.speak

#female_santa.gender = "maybe not female"

#p female_santa.age
#p female_santa.ethnicity
#p female_santa.gender


#original_santa.eat_milk_and_cookies("mailänderli")


santas = []





	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
			
			1000000.times do |i|
			
			random_gender = rand(example_genders.length)	
			random_etchnicity = rand(example_ethnicities.length)


	  		santas << Santa.new(example_genders[random_gender], example_ethnicities[random_etchnicity])
			end

# p santas	

		santas.each do |santa|
			puts" #{santa.age}, #{santa.ethnicity}, #{santa.gender}"

		end


#santas[3].celebrate_birthday

#santas[0].get_mad_at("Rudolph")
