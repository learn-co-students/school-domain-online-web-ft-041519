# code here!
require 'pry'

class School
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade_num)
    if !@roster.has_key?(grade_num)
      @roster[grade_num] = [student]
    else
      @roster[grade_num] << student
    end
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    @roster.each {|grade_num, students|
      students.sort!
    }
  end

  def roster
    @roster
  end
end
