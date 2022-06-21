require 'json'

class Writer
  def initialize()
    @people_file = if File.exist?('people.json')
                     File.open('people.json', 'a')
                   else
                     File.open('people.json', 'w')
                   end
    @books_file = File.open('books.json', 'w')
    @rentals_file = File.open('rentals.json', 'w')
  end

  def people(age:, name:, classroom: 'n/a', parent_permission: true, specialization: 'n/a')
    object = [age, classroom, name, parent_permission, specialization]
    @people_file.write("#{JSON.generate(object)}\n")
  end

  def close_all
    @people_file.close
    @books_file.close
    @rentals_file.close
  end
end
