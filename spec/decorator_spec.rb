require './decorator'
require './student'

describe Decorator do
  it 'has a :correct_name method' do
    decorator = Decorator.new(Nameable.new)
    expect(decorator.respond_to?(:correct_name)).to eq(true)
  end

  it 'can recieve an object to decorate' do
    student = Student.new('18', '', 'John', parent_permission: true)
    decorator = Decorator.new(student)
    expect(decorator.nameable).to eq(student)
  end
end
