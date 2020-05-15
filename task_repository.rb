# Manages task instance storage

class TaskRepository
  # Attributes
  def initialize
    @tasks = [] # => Array of task instances
  end

  # Behaviors
  def add(new_task)
    # new_task => Task instance
    @tasks << new_task
  end

  def find(index)
    @tasks[index] # instance of a task
  end

  def all
    @tasks
  end
end
