class Person
  attr_accessor :name, :age, :parent_permission
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    @age = Random.rand(1..1000)
    @age = age
    @parent_permission = parent_permission
    @name = name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    age >= 18
  end
end
