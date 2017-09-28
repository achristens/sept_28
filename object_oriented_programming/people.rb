class Person

  def initialize(name)
    @name = name
  end

  # Person readers
  def name
    @name
  end
  
end


class Student < Person

  def learn
    "I get it!"
  end

end


class Instructor < Person

  def teach
    "Everything in Ruby is an Object"
  end

end

prof = Instructor.new
stud = Student.new


puts prof.teach
puts stud.learn
