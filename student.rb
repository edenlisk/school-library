require_relative 'person'

class Student < Person
  attr_accessor :class_room

  def initialize(age, class_room, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @class_room = class_room
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
