class Teacher < Person
  Teacher.all = []
  def initialize(age, specialization, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
    Teacher.all << self
  end

  def can_use_services?
    true
  end
end
