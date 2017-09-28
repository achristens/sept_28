require './star.rb'
require './planet.rb'
require './moon.rb'

class System

  @@bodies = []

  def self.add(new_body)
    # instance method called add which will add a celestial body to @@bodies
    @@bodies << new_body
  end

  def self.all
    @@bodies
  end

  def total_mass
    sum = @@bodies.reduce(0) { |total, body| total + body.mass}
  end

end

earth = Planet.new("Earth", 12, 224, 12)
moon  = Moon.new("Moon", 12, 12, earth)
sun   = Star.new("Sun", 5000, "G-type")

System.add(earth)
System.add(moon)
System.add(sun)

puts System.all

puts sun.inspect
puts moon.inspect
puts earth.inspect
