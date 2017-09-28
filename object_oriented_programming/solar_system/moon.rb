require './body.rb'
require './planet.rb'

class Moon < Body

  def initialize(name, mass, month, planet_name)
    super(name, mass)
    @month  = month
    @planet_name = planet_name
  end
end
