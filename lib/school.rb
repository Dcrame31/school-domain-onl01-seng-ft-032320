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
    roster.each do |grade, students|
      students.sort {|a,b| a<=>b}
    end
  end
  
  
end