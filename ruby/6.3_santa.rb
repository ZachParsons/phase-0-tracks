# 6.3 Attributes
# Release 0: Bring Santa to Life

class Santa
# Release 3: Refactor with attr_reader and attr_accessor
  attr_reader :gender, :ethnicity, :age
  attr_accessor

  def initialize(gender, ethnicity)
    # puts "Initializing Santa instance ..."
# Release 1: Give Santa Attributes for Christmas
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
  end

  def speak(occasion)
    puts "Ho, ho, ho! Haaaappy holidays!"
    @occasion = occasion
  end

  def eat_milk_n_cookies(cookie_type)
    "That was a good #{cookie_type}!" 
    @cookie_type = cookie_type
  end

  # def about()
  #   puts "Speaks: #{@occasion}"
  #   puts "Favorite Cookie: #{@cookie_type}"
  # end

# Release 2: Change an Attribute with a Method
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at (reindeer_name)
# pattern for handling array iteration edgecases
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

# john = Santa.new
# john.name("John")
# john.speak("SantaCon")
# john.eat_milk_n_cookies("snickerdoodle")
# john.about

# joe = Santa.new
# joe.name("Joe")
# joe.speak("elsewhere")
# joe.eat_milk_n_cookies("thin mint")
# joe.about


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
# example_ethnicities.length.times do |e|
#   santas << Santa.new(example_ethnicities[e])
# end

# santa1 = Santa.new("JD", "ftm", "south asian")
# santa1.about

# santa2 = Santa.new("DJ", "pangender", "african")
# santa2.about

# santa3 = Santa.new("Pat")
# santa3.gender = "male"
# santa3.about

# Release 4: Build Many, Many Santas
example_genders = ["agender", "androgynous", "bigender", "female", "ftm", "genderqueer", "gender fluid", "male", "mtf", "non-binary", "pangender", "trans", "transgender", "other", "N/A"]
example_ethnicities = ["african", "asian" "black", "european", "latinx", "middle eastern", "native american", "pacific islander", "south asian", "white", "other", "N/A"]

1000.times do 
  santas = Santa.new(example_genders.sample, example_ethnicities.sample)
  puts "At SantaCon there is at least one #{santas.age} year-old, #{santas.gender}, #{santas.ethnicity} Santa!"
  puts "_" * 80
end