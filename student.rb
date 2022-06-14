class Student < Person
  Student.all = []
  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
    Student.all << self
  end

  def play_hookey
    "¯\(ツ)/¯"
  end
end
