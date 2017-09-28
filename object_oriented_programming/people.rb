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


puts prof.teach
puts stud.learn

# This returns an undefined method for the Student class. The teach method is exclusive to the Professor class, and since Student is not an inherit class of Professor, it cannot access its methods.
puts stud.teach
