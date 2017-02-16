# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows you to access the file you want by typing the access path from your current location on your computer.
# with require, you would need to type out the entire path to get to the file you want to work with. 
#
require_relative 'state_data'

class VirusPredictor
#Initialize assigns attributes (characteristics) to program and assigns the values that are input in the Driver Code with the parameters.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Calls 2 other methods. Assigns attributes to the called methods. 

  def virus_effects
    predicted_deaths#(@population_density, @population, @state) <----
    speed_of_spread #(@population_density, @state) <----- No Parameters needed. Attributes established
  end

  private
#Conditional based on population density attribute. 
#More population density = more deaths
  def predicted_deaths#(population_density, population, state) <---- Did not need parameters. Attributes are already in initialize.
    # predicted deaths is solely based on population density
  #MAKE IT MORE DRY
  #Create until loop where population density and float coefficient decrease by 50 and 0.1 each loop, respectively.  
    pop_den = 200
    x = 0.4
    until pop_den == 0 
      if @population_density >= pop_den
        number_of_deaths = (@population * x).floor
      else @population_density < 50
        number_of_deaths = (@population * 0.05).floor
      end 
      pop_den -= 50
      x -= 0.1
    end
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread#(population_density, state) 
# Conditional that increments the speed value based upon population density. 

  #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #speed = 0.0
    pop_den = 200
    x = 0.5
    until pop_den == 0
      if @population_density >= pop_den
        speed = x
      else @population_density < 50
        speed = 2.5
      end
      pop_den -= 50
      x += 0.5
    end

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================
#Run a .each for each state key in the STATE_DATA hash. 
#For each of the state keys, we want to run the VirusPredictor program.
  #Needs to be able to accept state key, population density and population as arguments.  
STATE_DATA.each do |state, number|
  state = VirusPredictor.new(state, number[:population_density], number[:population])
  state.virus_effects
end


# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One uses a hash rocket and the other uses symbols. For the hash rocket, they use strings as the key names. 

What does require_relative do? How is it different from require?
Require_relative links paths between ruby files. It is different 
from require in that require_relative can be called upon for files that are in the same directory, 
whereas require you can use to call upon files in different directories because of the need to type out the entire file path. 

What are some ways to iterate through a hash?
Using .each or .map are some ways to iterate through a hash. 

When refactoring virus_effects, wht stood out to you about the variables, if anything?
The variables were all attributes that had been established in the initialize method. 
These were also the only variables used throughout the class. 

What concept did you most solidify in this challenge?
This challenged really helped me solidify the idea of refactoring and simplifying code. 
It also helped me better understand the way attributes are run within a class and outside a class. 





