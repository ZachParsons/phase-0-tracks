# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# this keyword links another file ('state_data') via a *relative* path to it in the same directory that this file *requires* to run
# require would be used for an absolute path
require_relative 'state_data'

class VirusPredictor

# taking arguments & setting them as instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# declares the method virus_effects which calls two other instance methods & passes them arguments of instance variables with local scope
# the two methods called in the body of virus_effects don't need instance variable arguments bc
# the instance variables are available throughout the class 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# keyword private sets a scope of accessibility,
# when virus_effects was private the new class instance could use that method
  private
# declares the method predicted_deaths (taking as arguments) local variables, then
# using a conditional if statement to calculate based on mortality figures by
# multiplying the population variable by some factor (while rounding down) then
# assigning that value to number_of_deaths variable then
# prints interpolated values in a string about outbreak mortality
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = 0.0
    mortality_levels = {0 => 0.05, 50 => 0.1, 100 => 0.2, 150 => 0.3, 200 => 0.4}

    mortality_levels.each do |density, mortality|
      if @population_density >= density
        number_of_deaths = (@population * mortality).floor
      end
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

# declares the method speed_of_spread (taking arguments), declares a variable, then
# uses a conditional statement to increment the variable by a few multiples of another variable, then
# prints a string with an interpolated value about contagion rate
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    rate_levels = {0 => 2.5, 50 => 2, 100 => 1.5, 150 => 1, 200 => 0.5}

    rate_levels.each do |density, rate|
      if @population_density >= density
        speed = rate
      end
    end

    # if @population_density >= 200
    #   speed = 0.5
    # elsif @population_density >= 150
    #   speed = 1
    # elsif @population_density >= 100
    #   speed = 1.5
    # elsif @population_density >= 50
    #   speed = 2
    # else
    #   speed = 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state_name, population_figures|
   state = VirusPredictor.new(state_name, population_figures[:population_density], population_figures[:population])
   state.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# In the state data file, the nested hashes have this structure: h = {k => {k: v, k: v}}
# i.e. the deepest two key-value pairs are using symbol notation & are themselves the value of
# the state_name key using hash rocket notation. 

# # What does require_relative do? How is it different from require?
# (from above line 9) require_relative allows for loading/accessing another file via a relative path
# to the same local directory, its signature returns true-false, in contrast, require allows for
# loading/accessing another file from an absolute path to even remote directories such as code libraries or gems

# # What are some ways to iterate through a hash?
# Iterating through a hash can be done with block method do, in multi-line do end or single-line braces
# with built-in methods .each, & .map.

# # When refactoring virus_effects, what stood out to you about the variables, if anything?
# It was interesting that only the method initialize needed to take explicit arguments.

# # What concept did you most solidify in this challenge?
# The concepts solidified in this challenge were using *class methods* to iterate through & process a nested hash.
# Also refactoring conditional branches into hashes accessed by iterating block.
