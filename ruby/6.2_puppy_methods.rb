# Release 0: Add Behavior to a Class
# R1 class def & instance methods

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

# R0 2. 
  def speak(yaps)
    p "Woof!" * yaps 
    yaps 
  end 
 
# R0 3.
  def roll_over(rolls)
    p "*rolls over*" * rolls 
    rolls
  end 

# R0 4.
  def dog_years(human_years)
    p human_years * 7
    human_years
  end

# R0 5.
  def spins(circles)
    p "I spun around in #{circles} circles."
    circles 
  end 

# Release 1: Declare an Initialize Method
# 1. Add a method to your Puppy class named initialize.
  def initialize
    p "Initializing new puppy instance..."
    #name = Puppy.new 
  end 
end

# R0 driver code
rover = Puppy.new 
rover.fetch("ball")
rover.speak(3)
rover.roll_over(2)
rover.dog_years(10)
rover.spins(4)
rex = Puppy.new

# misspelling initialize seems to result in no return, output, or error message

# Release 2: Write Your Own Class, and Experiment!
# R2 class def & instance methods
class Kitten
  def initialize 
    p "Initializing new kitten instance..."
  end

  def jump(height)
    p "The kitten jumped #{height} inches."
    height 
  end 
  def chase(mice)
    p "The kitten chased #{mice} mice."
    mice
  end 
end 

#R2 driver code
simba = Kitten.new 
simba.jump(48)
simba.chase(2)

# 1. Use a loop to make 50 instances of your class.
# 2. Modify your loop so that it stores all of the instances in a data structure.
kittens =[]
until kittens.count == 50
  kittens << Kitten.new 
  print kittens.count 
end 

# 3. Iterate over that data structure using .each and call the instance methods you wrote on each instance.
kittens.each do |kitten|
  kitten.jump(48)
  kitten.chase(2)
end