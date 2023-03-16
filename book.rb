class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @author = author
    @title = title
  end

  def create_rental(person, date)
    Rental.new(date, self, person)
  end

end
