require './decorator'

class Trimmer < Decorator
  def correct_name
    @nameable.correct_name.slice(0, 9)
  end
end
