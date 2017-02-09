class Bird
  # def initialize
  # end
  include Flight
end

class Plane
  # def initialize
  # end
  include Flight
end

module Flight
  def take_off(altitude)
    puts "Taking off & ascending until reaching #{altitude} ..."
  end
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)