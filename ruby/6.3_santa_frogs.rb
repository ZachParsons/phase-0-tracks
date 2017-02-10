# 6.3 Attributes
# Release 0: Bring Santa to Life

class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
# Release 1: Give Santa Attributes for Christmas
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_n_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end

santas = []

# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

example_genders = ["agender", "androgynous", "bigender", "female", "ftm", "genderqueer", "gender fluid", "male", "mtf", "non-binary", "pangender", "trans", "transgender", "other", "N/A"]
example_ethnicities = ["african", "asian" "black", "european", "latinx", "middle eastern", "native american", "pacific islander", "south asian", "white", "other", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end 