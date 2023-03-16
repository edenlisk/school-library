require_relative 'nameable'
class Person < Nameable
  attr_accessor :name, :age, :parent_permission
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @age = Random.rand(1..1000)
    @age = age
    @parent_permission = parent_permission
    @name = name
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    age >= 18
  end
end
