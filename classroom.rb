class ClassRoom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
    @students = []
  end

  def create_student(student)
    @students << student
    student.class_room = self
  end

end
