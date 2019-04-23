require 'pry'

class School

  attr_accessor :school,:roster, :student, :add_student, :grade, :sort
  
  def initialize(school_name) 
    @name = school_name
    @roster = {}
  end 

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  
  def grade(grade_test)
    @roster[grade_test]
  end 
  
  def sort 
    @roster[9].sort!
    @roster.sort_by {|k, v| [k, v] }.to_h
  end 

end 