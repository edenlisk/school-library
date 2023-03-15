require 'decorator'

class TrimmerDecorator < Decorator
  def correct_name
    name = @nameable.correct_name
    name[0, 10] if name.length > 10
  end
end
