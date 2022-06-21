class Reader
  def initialize
    @people_file = File.open('people.json', 'r')
    @books_file = File.open('books.json', 'r')
    @rentals_file = File.open('rentals.json', 'r')
  end

  def read
 
  end
end