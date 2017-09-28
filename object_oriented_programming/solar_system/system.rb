require './star.rb'
require './planet.rb'
require './moon.rb'

class System

  @@bodies = []

  def self.add(new_body)
    if @@bodies.include?(new_body)
     puts  "That body already exists in this solar system"
    else
      @@bodies << new_body
      puts "The new #{new_body} has been added to the solar system"
    end
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

# System.add(earth)
# System.add(earth)

# System.add(moon)
System.add(sun)

System.add(sun)

puts System.all.inspect

# puts sun.inspect
# puts moon.inspect
# puts earth.inspect
