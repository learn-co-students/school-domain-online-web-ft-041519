require 'pry'
class School 
  
  attr_accessor :name, :roster 
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(student_name, grade)
    
    if @roster[grade] == nil
      @roster[grade] = []
    end
    # @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted_roster = {}
    @roster.each do |grade, students|
      sorted_roster[grade] = students.sort 
    end 
    sorted_roster
  end 
end 