class School 
  
  attr_accessor :roster, :name, :grade 
  
  def initialize(name)
    @name = name 
    @roster = {} 
  end
  
  def add_student(name, grade)

    if @roster[grade] == nil 
       @roster[grade] = [name]  
    else 
      @roster[grade] << name 
    end 
  end 
    def grade(num)
      @roster[num] 
    end 
    
    def sort 
      sorted = {} 
      
    @roster.each do |grade,name|
      sorted[grade] = name.sort 
    end 
      sorted
    end 
end 