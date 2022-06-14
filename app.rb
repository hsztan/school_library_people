class App
  def main_menu
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    selection = gets.chomp
  end

  def main_menu_selection
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
    end
  end

  def list_all_books
    Book.all.each do |book|
      puts book.title
    end
  end

  def list_all_people
    Person.all.each do |person|
      puts person.name
    end
  end
end
