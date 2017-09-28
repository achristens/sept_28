class Person

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{name}."
  end

  # Person readers
  def name
    @name
  end

end


class Student < Person

  def initialize(name)
    super(name)
  end

  def learn
    "I get it!"
  end

  def greeting
    super
  end

end


class Instructor < Person

  def initialize(name)
    super(name)
  end

  def teach
    "Everything in Ruby is an Object"
  end

  def greeting
    super
  end

end

prof = Instructor.new("Nadia")
stud = Student.new("Chris")

puts stud.greeting
puts prof.greeting
