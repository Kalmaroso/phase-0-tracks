# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative'state_data'

class VirusPredictor
  # saves the variables so they can be used within the class and the instance methods
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#   method virus_effects summarizes two methods as one(predeicted_deaths and speed_of_spread), which requires less
#   driver code
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
 private
 
      # predicted_deaths calculates the amount of deaths in a state based on the population and the population 
      # density and displays the results
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


  # speed_of_spread just calculates in how many months the virus will spread across the whole state
  # based on the population density and displays the result
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


STATE_DATA.each do |states, value|
  #p states
  state_name = VirusPredictor.new(states, value[:population_density], value[:population])
  state_name.virus_effects
end

#=======================================================================
# Reflection Section

#the first hash syntax uses a string as a key and the second on uses a symbol as a key

#require_relative basically copies the code from a file another file. The file that 
#gets copied has to be in the same directory. require already has a predetermined path 
#looking for a file

# you can ue different hash methods like .each or even .each_key

#For the methods speed_of_spreads and predicted deaths no arguments were necessary 
# all the necessary data were already available as instance variables throughout the class

#calling hashdata

