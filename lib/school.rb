class School
  
attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
 end
 
 def add_student(name, grade)
   if @roster.has_key?(grade) #if roster already has array grade, add name to the grade array
      @roster[grade] << name 
   else 
      @roster[grade] = [name] #if it didnt have a key of that grade, get name started in an array
  end
 end
 
 def grade(grade)  #arg is an array of a grade
   @roster[grade]     #using argument
  end

  def sort
    self.roster.each {|grade, students| students.sort!}
   end
end
  