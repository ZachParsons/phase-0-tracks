# 6.3 Attributes
# Release 0: Bring Santa to Life

class Santa
# Release 3: Refactor with attr_reader and attr_accessor
  attr_reader :ethnicity, :age,
  attr_accessor :gender

  def initialize(gender, ethnicity)
    # p "Initializing Santa instance ..."
# Release 1: Give Santa Attributes for Christmas
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
  end

  def speak(occasion)
    p "Ho, ho, ho! Haaaappy holidays!"
    @occasion = occasion
  end

  def eat_milk_n_cookies(cookie_type)
    "That was a good #{cookie_type}!" 
    @cookie_type = cookie_type
  end

  # def about()
  #   p "Speaks: #{@occasion}"
  #   p "Favorite Cookie: #{@cookie_type}"
  # end

# Release 2: Change an Attribute with a Method
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at (reindeer_name)
    reindeer_ranking.slice(reindeer_name)
    reindeer_ranking.insert(-1, reindeer_name)
  end

# getter methods for attributes, redundant with attr_reader
#   def age
#     @age
#   end

#   def ethnicity
#     @ethnicity
#   end

# setter method for attributes, redundant with attr_accessor
  # def gender=(new_gender)
  #   @gender = new_gender
  # end

end

# driver code

# John = Santa.new
# John.name("John")
# John.speak("SantaCon")
# John.eat_milk_n_cookies("snickerdoodle")
# John.about

# Joe = Santa.new
# Joe.name("Joe")
# Joe.speak("elsewhere")
# Joe.eat_milk_n_cookies("thin mint")
# Joe.about


# Add some diverse initializations to your file as driver code, then test your work by running the program from the command line. Feel free to get fancy with loops and whatnot, or keep it simple if you prefer.
# provided examples of gender & ethnicity arrays to append santas array
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# santas = []
# example_genders = ["agender", "androgynous", "bigender", "female", "ftm", "genderqueer", "gender fluid", "male", "mtf", "non-binary", "pangender", "trans", "transgender", "other", "N/A"]
# example_genders.length.times do |g|
#   santas << Santa.new(example_genders[g])
# end

# example_ethnicities = ["african", "asian" "black", "european", "latinx", "middle eastern", "native american", "pacific islander", "south asian", "white", "other", "N/A"]
# example_ethnicities.length.times do |i|
#   santas << Santa.new(example_ethnicities[i])
# end

# santa = Santa.new("JD", "ftm", "south asian")
# santa.about

# santa = Santa.new("DJ", "pangender", "african")
# santa.about

# santa = Santa.new("Job")
# santa.gender = "male"
# santa.about

# Release 4: Build Many, Many Santas
example_genders = ["agender", "androgynous", "bigender", "female", "ftm", "genderqueer", "gender fluid", "male", "mtf", "non-binary", "pangender", "trans", "transgender", "other", "N/A"]
example_ethnicities = ["african", "asian" "black", "european", "latinx", "middle eastern", "native american", "pacific islander", "south asian", "white", "other", "N/A"]

100.times do 
  santas = Santa.new(example_genders.sample, example_ethnicities.sample)
  p "Here at SantaCon there is at least one #{santas.age} year-old, #{santas.gender}, #{santas.ethnicity} Santa!"
  p "_______________________________________________________________________________"
end