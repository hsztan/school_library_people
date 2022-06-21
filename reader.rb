require './book'
require './teacher'
require './student'
require './rental'

class Reader
  def initialize(store)
    @people_file = File.open('people.json', 'r')
    @books_file = File.open('books.json', 'r')
    @rentals_file = File.open('rentals.json', 'r')
    @store = store
  end

  def read
 
  end
end