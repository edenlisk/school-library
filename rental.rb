
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    @person['rentals'] << self
    @book['rentals'] << self
  end

  def create_hash
    {
      date: @date,
      book: @book.create_hash,
      person: @person.create_hash
    }
  end

end
