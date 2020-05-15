# Managing (the process to complete) user actions
require_relative "tasks_view"
require_relative "task"

class TasksController
  # Data
  def initialize(task_repository)
    @task_repository = task_repository
    @tasks_view = TasksView.new
  end

  # Behavior
  def add_task
    # ASK VIEW to ask the user for a description
    description = @tasks_view.ask_for_description
    # ASK TASK to initialize a task with this description
    new_task = Task.new(description)
    # ASK REPO to store task
    @task_repository.add(new_task)
  end

  # Display tasks to the user
  def list_tasks
    # ASK REPO for the tasks
    tasks = @task_repository.all
    # ASK VIEW to display them
    @tasks_view.display(tasks)
  end

  # Marks a task as completed
  def mark_task
    # ASK REPO for tasks
    tasks = @task_repository.all
    # ASK VIEW to display tasks
    @tasks_view.display(tasks)
    # ASK VIEW for a number to mark as done
    task_index = @tasks_view.ask_for_index
    # ASK REPO for the given task
    task = @task_repository.find(task_index)
    # ASK task intance to mark itself as done
    task.mark_as_completed!
  end
end
