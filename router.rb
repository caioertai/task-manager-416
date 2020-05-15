# Directs user to their actions
class Router
  def initialize(tasks_controller)
    @tasks_controller = tasks_controller
    @running = true
  end

  def run
    puts "Welcome to the task manager"
    while @running
      display_menu
      user_input = gets.chomp.to_i
      route_action(user_input)
    end
  end

  def display_menu
    puts "1. Add a task"
    puts "2. List tasks"
    puts "3. Mark a task"
    puts "Type: [1, 2 or 3]"
  end

  def route_action(user_input)
    case user_input
    when 1 then @tasks_controller.add_task
    when 2 then @tasks_controller.list_tasks
    when 3 then @tasks_controller.mark_task
    else
      puts "Wrong input"
    end
  end
end
