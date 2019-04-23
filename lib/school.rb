# code here!
class School

  attr_accessor :grade
  attr_reader :name, :roster

  def initialize(name)
    @roster = {}
    @name = name
  end



  def add_student(name, grade)

    if  !(@roster.include?(grade))
      @roster[grade] = []
    end
  @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    # @roster.each do
    #   @roster[grade].sort!
    # end
    @roster
  end

end
