class Student < Person
  attr_reader :rentals

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    @rentals = []
  end

  def play_hookey
    "¯\(ツ)/¯"
  end
end
