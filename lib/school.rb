require 'pry'

class School 
  
  attr_accessor :school, :roster, :name, :grade 
  
  def initialize(school)
    @school = school
    @roster = {}
  end 
  
  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name 
    else @roster [grade] = [] 
      @roster[grade] << name
    end 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort
    sort_all_grades = {} 
    @roster.each do |grade, name|
      sort_all_grades[grade] = name.sort
    end 
    sort_all_grades
  end 
end 