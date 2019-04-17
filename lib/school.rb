require 'pry'
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(stu_name, stu_grade)
    roster[stu_grade] ||= []
    roster[stu_grade] << stu_name
  end
  
  def grade(num)
    roster[num]
  end
  
  def sort
    roster.each {|key, value| value.sort!}
  end
end
