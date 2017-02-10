# 6.4 Modules
# Release 2: Mix in a Module

module Flight
  def take_off(altitude)
    puts "Taking off & ascending until reaching #{altitude} ..."
  end
end

class Bird
  include Flight
end

class Plane
  include Flight
end

bird1 = Bird.new
bird1.take_off(800)

plane1 = Plane.new
plane1.take_off(30000)