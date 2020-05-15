# Models task structure

class Task
  attr_reader :description

  def initialize(description)
    @description = description
    @completed = false
  end

  def mark_as_completed!
    @completed = true
  end

  def completed?
    @completed
  end
end
