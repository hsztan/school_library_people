require './student'
require './person'
require './book'
require './rental'
require './store'

describe Person do
  it 'should have a name' do
    person = Person.new('18', 'John', parent_permission: true)
    expect(person.name).to eq('John')
  end

  it 'should have an id' do
    person = Person.new('18', 'John', parent_permission: true)
    expect(person.id.class).to eq(String)
  end

  it 'should have an age' do
    person = Person.new('18', 'John', parent_permission: true)
    expect(person.age).to eq('18')
  end

  it 'should have a parent permission' do
    person = Person.new('18', 'John', parent_permission: true)
    expect(person.parent_permission).to eq(true)
  end

  it 'should have a list of rentals' do
    person = Person.new('18', 'John', parent_permission: true)
    expect(person.rentals).to eq([])
  end

  it 'should be able to rent a book' do
    person = Person.new('18', 'John', parent_permission: true)
    book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
    rental = Rental.new('2018-01-01', book, person)
    expect(person.rentals).to eq([rental])
  end
end
