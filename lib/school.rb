require 'pry'

class School
  
  attr_accessor :roster, :school
  
  
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  
  def add_student (name, grade)
    @name = name
    @grade = grade
    @roster[@grade] ||= []
    @roster[@grade] << "#{@name}"
  end
  
  def grade (grade)
    @roster[grade]
  end 
  
  def sort 
    new_names = {}
    @roster.each do |grade, names|
      new_names[grade] = names.sort
    end
    new_names
  end 
end 