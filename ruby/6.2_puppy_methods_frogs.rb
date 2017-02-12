# 6.2 Mandatory Pairing: Instance Methods

# Release 1: Declare an Initialize Method
class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(s)
    puts "Woof!" * s
  end

  def rollover(r)
    puts "*rollover*" * r
  end

  def dog_years(human_years)
    p human_years * 7
  end

  def jump(h)
    puts "*jumps #{h}ft high*"
  end

end

rover = Puppy.new
rover.speak(5)
rover.rollover(5)
rover.dog_years(5)
rover.jump(3)

# Release 2: Write Your Own Class, and Experiment!
class Kitten
  def initialize
    puts "Initializing new kitten instance ..."
  end

  def meow(n)
    puts "meow " * n 
  end

  def chase(m)
    puts "*chases laserpointer for #{m} minutes*"
  end
end

puts "This is creating 50 instances of the class Kitten:"
kittens_array = []
50.times do
  kittens_array << Kitten.new
  p kittens_array.count
end

puts "This is the array:"
p kittens_array

puts "This is calling both methods on each item in the array:"
kittens_array.each do |kitten|
  kitten.meow(rand(10))
  kitten.chase(rand(10))
end

