# code here!

class School
  
  attr_reader :name, :roster
  def initialize(name)
    @name= name
    @roster = {}
  end
  
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  
  def grade(num)
    roster[num]
  end
  
  def sort
    roster.map do |grade, name|
      name.sort
    end
  end
  
  
end