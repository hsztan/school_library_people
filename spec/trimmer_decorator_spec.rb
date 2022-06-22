require './trimmer_decorator'
require './student'

describe TrimmerDecorator do
  it 'has a :correct_name method' do
    decorator = TrimmerDecorator.new(Nameable.new)
    expect(decorator.respond_to?(:correct_name)).to eq(true)
  end

  it 'can recieve an object to decorate' do
    student = Student.new('18', '', 'John', parent_permission: true)
    decorator = TrimmerDecorator.new(student)
    expect(decorator.nameable).to eq(student)
  end

  it 'should trim the name' do
    student = Student.new('18', '', 'Rumplestilskin', parent_permission: true)
    decorator = TrimmerDecorator.new(student)
    expect(decorator.correct_name).to eq('Rumplesti')
  end
end
