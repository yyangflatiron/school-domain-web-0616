# code here!
class School
attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade) == false
      @roster[grade]=[]
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, students|
      roster[grade]=students.sort
    end
    roster
  end

end
#school = School.new("Bayside High School")
