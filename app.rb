require './store'
require './book'
require './person'
require './student'

class App
  attr_reader :store

  def initialize
    @store = Store.new
  end

  def main_menu
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    main_selection
  end

  def main_selection
    selection = gets.chomp
    case selection
    when '1' then list_all_books
    when '2' then list_all_people
    when '3' then create_person
    when '4' then create_book
    when '5' then create_rental
    when '6' then list_all_rentals_for_person
    when '7' then exit
    else
      puts 'Invalid selection'
      main_selection
    end
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    selection = gets.chomp
    if selection == '1'
      create_student
    elsif selection == '2'
      create_teacher
    else
      puts 'Invalid selection'
      create_person
    end
  end

  def create_student
    puts 'Age: '
    age = gets.chomp
    puts 'Name: '
    name = gets.chomp
    puts 'Has parent permission? (Y/N): '
    parent_permission = gets.chomp.downcase == 'y'
    student = Student.new(age, 'n/a', name, parent_permission)
    @store.people << student
    puts 'Person created successfully'
  end

  def list_all_books
    @store.books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_all_people
    @store.people.each do |person|
      puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def main
    main_menu
  end
end

book = Book.new('The Hobbit', 'J.R.R. Tolkien')
student = Student.new(12, '1A', 'John Doe')
app = App.new
app.store.books << book
app.store.people << student
app.main
# student = Student.new(12, '1A', 'John Doe')