require 'json'
require './book'
require './teacher'
require './student'
require './rental'
require 'pry'

class Reader
  def initialize(store)
    @people_file = File.open('people.json', 'r')
    @books_file = File.open('books.json', 'r')
    @rentals_file = File.open('rentals.json', 'r')
    @store = store
    @people = []
  end

  def read
    @people_file.each { |line| @people << JSON.parse(line) }
    binding.pry
    @people_file.close
    create_people
  end

  private

  def create_people
    @people.each do |person|
      if person[-1]
        teacher = Teacher.new(person[0], person[-1], person[2])
        @store.people << teacher
      else
        student = Student.new(person[0], 'n/a', person[2], parent_permission: person[3])
        @store.people << student
      end
    end
  end
end
