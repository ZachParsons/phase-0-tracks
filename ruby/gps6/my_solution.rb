# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# Release 1: require_relative
# EXPLANATION OF require_relative
#
# require_relative allows for loading/accessing another file via a relative path to the same local directory, its signature returns true-false
# in contrast, require allows for loading/accessing another file from an absolute path to even remote directories such as code libraries or gems
require_relative 'state_data'

class VirusPredictor
# assigns attributes to instance variables by taking takes three arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# a wrapper method that returns the output/results of two other methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# Release 6: Private
# private is a built-in method (in docs under module) that sets visibility of subsequently defined methods
# if placed above method virus_effects, program breaks
  private
  # conditionals setting ranges of population density, which calculates disease spread, assigns total deaths, prints string saying so in English
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

# conditionals setting ranges of population density, which determines speed of disease spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case
    when @population_density >= 200
      speed += 0.5
    when @population_density >= 150
      speed += 1
    when @population_density >= 100
      speed += 1.5
    when @population_density >= 50
      speed += 2
    when
      speed += 2.5
    end

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


# Release 4: Implement a new feature
STATE_DATA.each do |state_name, properties|
  # properties.each do |key, population|
  state_projection = VirusPredictor.new(state_name, properties[:population_density], properties[:population])
  state_projection.virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# In the state data file, the nested hashes have this structure: h = {k => {k:v, k:v}}, i.e. the deepest two key-value pairs are using symbol notation & are themselves the value of the state_name key using hash rocket notation. 

# # What does require_relative do? How is it different from require?
# (from above line 9) require_relative allows for loading/accessing another file via a relative path to the same local directory, its signature returns true-false, in contrast, require allows for loading/accessing another file from an absolute path to even remote directories such as code libraries or gems

# # What are some ways to iterate through a hash?
# Iterating through a hash can be done with block method do and built-in methods .each, & .map.

# # When refactoring virus_effects, what stood out to you about the variables, if anything?
# It was interesting that only the method initialize needed to take explicit arguments.

# # What concept did you most solidify in this challenge?
# The concepts solidified in this challenge were using *class methods* to iterate through & process a nested hash.
