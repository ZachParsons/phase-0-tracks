class Puppy

  def fetch(toy)
    p "I brought back the #{toy}!"
    toy
  end

  # added class methods
  def speak(times)
    p "Woof!" * times
  end

  def roll_over(times)
    p "*rolls over*" * times
  end 

  def dog_years(years)
    p dog_age = years * 7
  end

  def spin(times)
    p "I spun around #{times} times."
  end

# Release 1: Declare an Initialize Method
# 1. Add a method to your Puppy class named initialize.
  def initialize
    p "Initializing new puppy instance ..."
    # name = Puppy.new
  end
  #
end


#
class Kitten

  def initialize
    p "Initializing new kitten instance ..."
  end

  def jump(height)
    p "I jumped #{height} inches high."
  end

  def chase(s)
    p "I chased the laser-pointer for #{s} seconds."
  end

end

#


# test code

Rover = Puppy.new
# Rover.initialize
# initialize(Rover)

Rover.fetch("ball")
Rover.speak(5)
Rover.roll_over(3)
Rover.dog_years(5)
Rover.spin(5)

Rex = Puppy.new


Fritz = Kitten.new
Fritz.jump(24)
Fritz.chase(90)


# Release 2: Write Your Own Class, and Experiment!
# 1. Use a loop to make 50 instances of your class.
# 2. Modify your loop so that it stores all of the instances in a data structure.

kittens = []
until kittens.count == 50
  kittens << Kitten.new
  # p kittens.count
end

# 3. Iterate over that data structure using .each and call the instance methods you wrote on each instance.
kittens.each do |kitten|
  kitten.jump(36)
  kitten.chase(90)
end
#